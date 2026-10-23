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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A046300: Smallest integer k such that 2^n is the largest power of two that is contained in 2^k as a proper substring.

The programs for A046300, there is no canonical definition to state claims against.
-/

/-! ## A046300.P1291349125142327289

`A342575(A024647(n))`
-/

namespace A046300.P1291349125142327289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342575 (A024647 n).toNat

end

end A046300.P1291349125142327289

/-! ## A046300.P13376144775698865657

`A342575(A024648(n))`
-/

namespace A046300.P13376144775698865657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342575 (A024648 n).toNat

end

end A046300.P13376144775698865657

/-! ## A046300.P7365048902910784725

`A342575(A024649(n))`
-/

namespace A046300.P7365048902910784725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342575 (A024649 n).toNat

end

end A046300.P7365048902910784725

/-! ## A046300.P15549888000818344765

`A342575(A073789(n))`
-/

namespace A046300.P15549888000818344765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342575 (A073789 n).toNat

end

end A046300.P15549888000818344765

/-!
# A046301: Product of 3 successive primes.

The programs for A046301, the canonical program `A046301.P8827187728700103366` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046301 has offset 1).

The definition of A046301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046301.P2804270296374568359

`sqrt(A258155(n+1))`
-/

namespace A046301.P2804270296374568359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258155 (n + 1) : ℝ)

end

end A046301.P2804270296374568359

namespace A046301

/-- `sqrt(A258155(n+1))` -/
def P2804270296374568359.Spec : Prop :=
  ∀ n, P2804270296374568359.a n = (A046301 (n + 1) : ℝ)

end A046301

/-! ## A046301.P10892941332382229942

`A065091(n+1)*A090076(n+1)`
-/

namespace A046301.P10892941332382229942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A090076 (n + 1)

end

end A046301.P10892941332382229942

namespace A046301

/-- `A065091(n+1)*A090076(n+1)` -/
def P10892941332382229942.Spec : Prop :=
  ∀ n, P10892941332382229942.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P2153135776812758886

`A006094(n+1)*A215848(n+1)`
-/

namespace A046301.P2153135776812758886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A215848 (n + 1)

end

end A046301.P2153135776812758886

namespace A046301

/-- `A006094(n+1)*A215848(n+1)` -/
def P2153135776812758886.Spec : Prop :=
  ∀ n, P2153135776812758886.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P6013118836220993011

`A066116(n+3)/A065091(n+1)`
-/

namespace A046301.P6013118836220993011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066116 (n + 3) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A046301.P6013118836220993011

namespace A046301

/-- `A066116(n+3)/A065091(n+1)` -/
def P6013118836220993011.Spec : Prop :=
  ∀ n, P6013118836220993011.a n = (A046301 (n + 1) : ℚ)

end A046301

/-! ## A046301.P2528665743434878844

`gcd(A046302(n+1), A258155(n+1))`
-/

namespace A046301.P2528665743434878844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046302 (n + 1)) (A258155 (n + 1))

end

end A046301.P2528665743434878844

namespace A046301

/-- `gcd(A046302(n+1), A258155(n+1))` -/
def P2528665743434878844.Spec : Prop :=
  ∀ n, (P2528665743434878844.a n : ℤ) = A046301 (n + 1)

end A046301

/-! ## A046301.P16240753284227768390

`gcd(A046303(n+1), A331259(n+1))`
-/

namespace A046301.P16240753284227768390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046303 (n + 1)) (A331259 (n + 1))

end

end A046301.P16240753284227768390

namespace A046301

/-- `gcd(A046303(n+1), A331259(n+1))` -/
def P16240753284227768390.Spec : Prop :=
  ∀ n, (P16240753284227768390.a n : ℤ) = A046301 (n + 1)

end A046301

/-! ## A046301.P4785564406538393605

`lcm(A006094(n+1), A090076(n+1))`
-/

namespace A046301.P4785564406538393605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006094 (n + 1)) (A090076 (n + 1))

end

end A046301.P4785564406538393605

namespace A046301

/-- `lcm(A006094(n+1), A090076(n+1))` -/
def P4785564406538393605.Spec : Prop :=
  ∀ n, (P4785564406538393605.a n : ℤ) = A046301 (n + 1)

end A046301

/-! ## A046301.P3037667869684717754

`gcd(A046324(n+1), A066116(n+3))`
-/

namespace A046301.P3037667869684717754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046324 (n + 1)) (A066116 (n + 3))

end

end A046301.P3037667869684717754

namespace A046301

/-- `gcd(A046324(n+1), A066116(n+3))` -/
def P3037667869684717754.Spec : Prop :=
  ∀ n, (P3037667869684717754.a n : ℤ) = A046301 (n + 1)

end A046301

/-! ## A046301.P3270837445881573475

`gcd(2*A258155(n+1)², A046326(n+1))`
-/

namespace A046301.P3270837445881573475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A258155 (n + 1) ^ 2) (A046326 (n + 1))

end

end A046301.P3270837445881573475

namespace A046301

/-- `gcd(2*A258155(n+1)², A046326(n+1))` -/
def P3270837445881573475.Spec : Prop :=
  ∀ n, (P3270837445881573475.a n : ℤ) = A046301 (n + 1)

end A046301

/-! ## A046301.P16047799285158496691

`(A152530(n+1)+A065091(n+1))*A065091(n+1)`
-/

namespace A046301.P16047799285158496691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152530 (n + 1) + A065091 (n + 1)) * A065091 (n + 1)

end

end A046301.P16047799285158496691

namespace A046301

/-- `(A152530(n+1)+A065091(n+1))*A065091(n+1)` -/
def P16047799285158496691.Spec : Prop :=
  ∀ n, P16047799285158496691.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P8827187728700103366

`(A034961(n+1)-A001043(n+1))*A006094(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046301

/-- `(A034961(n+1)-A001043(n+1))*A006094(n+1)` -/
def P8827187728700103366.Spec : Prop :=
  ∀ n, P8827187728700103366.a n = A046301 (n + 1)

theorem P8827187728700103366.correct : P8827187728700103366.Spec := by
  intro n
  simp only [A046301, Nat.add_sub_cancel]

end A046301

/-! ## A046301.P10903035738293295311

`(A006094(n+1)-A111071(n+1))*A006094(n+1)`
-/

namespace A046301.P10903035738293295311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) - A111071 (n + 1)) * A006094 (n + 1)

end

end A046301.P10903035738293295311

namespace A046301

/-- `(A006094(n+1)-A111071(n+1))*A006094(n+1)` -/
def P10903035738293295311.Spec : Prop :=
  ∀ n, P10903035738293295311.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P14180515053399295813

`(A090090(n+1)-A117301(n+1))*A000040(n+1)`
-/

namespace A046301.P14180515053399295813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090090 (n + 1) - A117301 (n + 1)) * A000040 (n + 1)

end

end A046301.P14180515053399295813

namespace A046301

/-- `(A090090(n+1)-A117301(n+1))*A000040(n+1)` -/
def P14180515053399295813.Spec : Prop :=
  ∀ n, P14180515053399295813.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P17333921202190543742

`(A293206(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A046301.P17333921202190543742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293206 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A046301.P17333921202190543742

namespace A046301

/-- `(A293206(n+1)-A000040(n+1))*A000040(n+1)` -/
def P17333921202190543742.Spec : Prop :=
  ∀ n, P17333921202190543742.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P9760659784663136667

`(A292926(n+1)-A006094(n+1))*A006094(n+1)`
-/

namespace A046301.P9760659784663136667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A292926 (n + 1) - A006094 (n + 1)) * A006094 (n + 1)

end

end A046301.P9760659784663136667

namespace A046301

/-- `(A292926(n+1)-A006094(n+1))*A006094(n+1)` -/
def P9760659784663136667.Spec : Prop :=
  ∀ n, P9760659784663136667.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P2921110994931827462

`(A292926(n+1)-A215848(n+1))*A215848(n+1)`
-/

namespace A046301.P2921110994931827462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A292926 (n + 1) - A215848 (n + 1)) * A215848 (n + 1)

end

end A046301.P2921110994931827462

namespace A046301

/-- `(A292926(n+1)-A215848(n+1))*A215848(n+1)` -/
def P2921110994931827462.Spec : Prop :=
  ∀ n, P2921110994931827462.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P13550593523643340406

`(A034961(n+1)-A011974(n+2))*A006094(n+1)`
-/

namespace A046301.P13550593523643340406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 1) - A011974 (n + 2)) * A006094 (n + 1)

end

end A046301.P13550593523643340406

namespace A046301

/-- `(A034961(n+1)-A011974(n+2))*A006094(n+1)` -/
def P13550593523643340406.Spec : Prop :=
  ∀ n, P13550593523643340406.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P17052655638519976432

`Δ[A007504(n)]*A006094(n+2)`
-/

namespace A046301.P17052655638519976432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006094 (n + 2)

end

end A046301.P17052655638519976432

namespace A046301

/-- `Δ[A007504(n)]*A006094(n+2)` -/
def P17052655638519976432.Spec : Prop :=
  ∀ n, P17052655638519976432.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P7641013799313329362

`A000040(n+1)*A006094(n+2)`
-/

namespace A046301.P7641013799313329362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A006094 (n + 2)

end

end A046301.P7641013799313329362

namespace A046301

/-- `A000040(n+1)*A006094(n+2)` -/
def P7641013799313329362.Spec : Prop :=
  ∀ n, P7641013799313329362.a n = A046301 (n + 1)

end A046301

/-! ## A046301.P3480150746933907664

`A006094(n+1)*A065091(n+2)`
-/

namespace A046301.P3480150746933907664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A065091 (n + 2)

end

end A046301.P3480150746933907664

namespace A046301

/-- `A006094(n+1)*A065091(n+2)` -/
def P3480150746933907664.Spec : Prop :=
  ∀ n, P3480150746933907664.a n = A046301 (n + 1)

end A046301

/-!
# A046302: Products of 4 successive primes.

The programs for A046302, the canonical program `A046302.P14230165923865904189` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046302 has offset 1).

The definition of A046302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046302.P14230165923865904189

`lcm(A046301(n+1), A090090(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046302

/-- `lcm(A046301(n+1), A090090(n+1))` -/
def P14230165923865904189.Spec : Prop :=
  ∀ n, (P14230165923865904189.a n : ℤ) = A046302 (n + 1)

theorem P14230165923865904189.correct : P14230165923865904189.Spec := by
  intro n
  simp only [A046302, Nat.add_sub_cancel]

end A046302

/-! ## A046302.P16358669182564811108

`(A090090(n+1)-A117301(n+1))*A090090(n+1)`
-/

namespace A046302.P16358669182564811108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090090 (n + 1) - A117301 (n + 1)) * A090090 (n + 1)

end

end A046302.P16358669182564811108

namespace A046302

/-- `(A090090(n+1)-A117301(n+1))*A090090(n+1)` -/
def P16358669182564811108.Spec : Prop :=
  ∀ n, P16358669182564811108.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P9430900298485733858

`A000040(n+1)*A046301(n+2)`
-/

namespace A046302.P9430900298485733858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046301 (n + 2)

end

end A046302.P9430900298485733858

namespace A046302

/-- `A000040(n+1)*A046301(n+2)` -/
def P9430900298485733858.Spec : Prop :=
  ∀ n, P9430900298485733858.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P5747000484452966034

`A006094(n+2)*A090090(n+1)`
-/

namespace A046302.P5747000484452966034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) * A090090 (n + 1)

end

end A046302.P5747000484452966034

namespace A046302

/-- `A006094(n+2)*A090090(n+1)` -/
def P5747000484452966034.Spec : Prop :=
  ∀ n, P5747000484452966034.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P803178651672988018

`A090076(n+1)*A090076(n+2)`
-/

namespace A046302.P803178651672988018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) * A090076 (n + 2)

end

end A046302.P803178651672988018

namespace A046302

/-- `A090076(n+1)*A090076(n+2)` -/
def P803178651672988018.Spec : Prop :=
  ∀ n, P803178651672988018.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P6699423860714731891

`A046301(n+1)*A215848(n+2)`
-/

namespace A046302.P6699423860714731891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A215848 (n + 2)

end

end A046302.P6699423860714731891

namespace A046302

/-- `A046301(n+1)*A215848(n+2)` -/
def P6699423860714731891.Spec : Prop :=
  ∀ n, P6699423860714731891.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P16693229870047240077

`(A034961(n+1)-A001043(n+2))*A046301(n+2)`
-/

namespace A046302.P16693229870047240077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034961 (n + 1) - A001043 (n + 2)) * A046301 (n + 2)

end

end A046302.P16693229870047240077

namespace A046302

/-- `(A034961(n+1)-A001043(n+2))*A046301(n+2)` -/
def P16693229870047240077.Spec : Prop :=
  ∀ n, P16693229870047240077.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P3842431998367026550

`(A034964(n+1)-A034963(n+2))*A046301(n+2)`
-/

namespace A046302.P3842431998367026550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034964 (n + 1) - A034963 (n + 2)) * A046301 (n + 2)

end

end A046302.P3842431998367026550

namespace A046302

/-- `(A034964(n+1)-A034963(n+2))*A046301(n+2)` -/
def P3842431998367026550.Spec : Prop :=
  ∀ n, P3842431998367026550.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P3297738970262501162

`(A127337(n+1)-A127336(n+2))*A046301(n+2)`
-/

namespace A046302.P3297738970262501162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127337 (n + 1) - A127336 (n + 2)) * A046301 (n + 2)

end

end A046302.P3297738970262501162

namespace A046302

/-- `(A127337(n+1)-A127336(n+2))*A046301(n+2)` -/
def P3297738970262501162.Spec : Prop :=
  ∀ n, P3297738970262501162.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P16201444288851454303

`A046324(n+1)/A046303(n+2)*A046301(n+2)`
-/

namespace A046302.P16201444288851454303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046324 (n + 1) : ℚ) / (A046303 (n + 2) : ℚ) * (A046301 (n + 2) : ℚ)

end

end A046302.P16201444288851454303

namespace A046302

/-- `A046324(n+1)/A046303(n+2)*A046301(n+2)` -/
def P16201444288851454303.Spec : Prop :=
  ∀ n, P16201444288851454303.a n = (A046302 (n + 1) : ℚ)

end A046302

/-! ## A046302.P14687168696597506147

`A046325(n+1)/A046324(n+2)*A046301(n+2)`
-/

namespace A046302.P14687168696597506147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046325 (n + 1) : ℚ) / (A046324 (n + 2) : ℚ) * (A046301 (n + 2) : ℚ)

end

end A046302.P14687168696597506147

namespace A046302

/-- `A046325(n+1)/A046324(n+2)*A046301(n+2)` -/
def P14687168696597506147.Spec : Prop :=
  ∀ n, P14687168696597506147.a n = (A046302 (n + 1) : ℚ)

end A046302

/-! ## A046302.P8310380271064475994

`A046326(n+1)/A046325(n+2)*A046301(n+2)`
-/

namespace A046302.P8310380271064475994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046326 (n + 1) : ℚ) / (A046325 (n + 2) : ℚ) * (A046301 (n + 2) : ℚ)

end

end A046302.P8310380271064475994

namespace A046302

/-- `A046326(n+1)/A046325(n+2)*A046301(n+2)` -/
def P8310380271064475994.Spec : Prop :=
  ∀ n, P8310380271064475994.a n = (A046302 (n + 1) : ℚ)

end A046302

/-! ## A046302.P8857233534336992723

`A006094(n+1)*A006094(n+3)`
-/

namespace A046302.P8857233534336992723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A006094 (n + 3)

end

end A046302.P8857233534336992723

namespace A046302

/-- `A006094(n+1)*A006094(n+3)` -/
def P8857233534336992723.Spec : Prop :=
  ∀ n, P8857233534336992723.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P5947816292215089500

`A046301(n+1)*A065091(n+3)`
-/

namespace A046302.P5947816292215089500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A065091 (n + 3)

end

end A046302.P5947816292215089500

namespace A046302

/-- `A046301(n+1)*A065091(n+3)` -/
def P5947816292215089500.Spec : Prop :=
  ∀ n, P5947816292215089500.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P13170073267907175334

`A176098(n+3)*A176098(n+4)`
-/

namespace A046302.P13170073267907175334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 3) * A176098 (n + 4)

end

end A046302.P13170073267907175334

namespace A046302

/-- `A176098(n+3)*A176098(n+4)` -/
def P13170073267907175334.Spec : Prop :=
  ∀ n, P13170073267907175334.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P5523411376501211953

`A000040(n+1)*A000040(n+2)*A000040(n+3)*A000040(n+4)`
-/

namespace A046302.P5523411376501211953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) * A000040 (n + 3) * A000040 (n + 4)

end

end A046302.P5523411376501211953

namespace A046302

/-- `A000040(n+1)*A000040(n+2)*A000040(n+3)*A000040(n+4)` -/
def P5523411376501211953.Spec : Prop :=
  ∀ n, P5523411376501211953.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P12572387829562244319

`A333747(2*(n+1))*A333747(2*(n+2))`
-/

namespace A046302.P12572387829562244319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * (n + 1)) * A333747 (2 * (n + 2))

end

end A046302.P12572387829562244319

namespace A046302

/-- `A333747(2*(n+1))*A333747(2*(n+2))` -/
def P12572387829562244319.Spec : Prop :=
  ∀ n, P12572387829562244319.a n = A046302 (n + 1)

end A046302

/-! ## A046302.P9555458289734524593

`record[A116570(n+4)*A116570(n)]`
-/

namespace A046302.P9555458289734524593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (n + 4) * A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046302.P9555458289734524593

namespace A046302

/-- `record[A116570(n+4)*A116570(n)]` -/
def P9555458289734524593.Spec : Prop :=
  ∀ n, P9555458289734524593.a n = A046302 (n + 1)

end A046302

/-!
# A046303: Product of 5 successive primes.

The programs for A046303, the canonical program `A046303.P9565588535061664667` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046303 has offset 1).

The definition of A046303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046303.P9565588535061664667

`A000040(n+1)*A046302(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046303

/-- `A000040(n+1)*A046302(n+2)` -/
def P9565588535061664667.Spec : Prop :=
  ∀ n, P9565588535061664667.a n = A046303 (n + 1)

theorem P9565588535061664667.correct : P9565588535061664667.Spec := by
  intro n
  simp only [A046303, Nat.add_sub_cancel]

end A046303

/-! ## A046303.P16398504622457298291

`A008578(n+2)*A046302(n+2)`
-/

namespace A046303.P16398504622457298291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A046302 (n + 2)

end

end A046303.P16398504622457298291

namespace A046303

/-- `A008578(n+2)*A046302(n+2)` -/
def P16398504622457298291.Spec : Prop :=
  ∀ n, P16398504622457298291.a n = A046303 (n + 1)

end A046303

/-! ## A046303.P18288657855683301892

`lcm(A006094(n+1), A046302(n+2))`
-/

namespace A046303.P18288657855683301892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006094 (n + 1)) (A046302 (n + 2))

end

end A046303.P18288657855683301892

namespace A046303

/-- `lcm(A006094(n+1), A046302(n+2))` -/
def P18288657855683301892.Spec : Prop :=
  ∀ n, (P18288657855683301892.a n : ℤ) = A046303 (n + 1)

end A046303

/-! ## A046303.P17104465387463122540

`A046301(n+1)*A046302(n+2)/A006094(n+2)`
-/

namespace A046303.P17104465387463122540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) * A046302 (n + 2) : ℚ) / (A006094 (n + 2) : ℚ)

end

end A046303.P17104465387463122540

namespace A046303

/-- `A046301(n+1)*A046302(n+2)/A006094(n+2)` -/
def P17104465387463122540.Spec : Prop :=
  ∀ n, P17104465387463122540.a n = (A046303 (n + 1) : ℚ)

end A046303

/-! ## A046303.P8401056366878646747

`A046302(n+1)/A046301(n+2)*A046302(n+2)`
-/

namespace A046303.P8401056366878646747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A046301 (n + 2) : ℚ) * (A046302 (n + 2) : ℚ)

end

end A046303.P8401056366878646747

namespace A046303

/-- `A046302(n+1)/A046301(n+2)*A046302(n+2)` -/
def P8401056366878646747.Spec : Prop :=
  ∀ n, P8401056366878646747.a n = (A046303 (n + 1) : ℚ)

end A046303

/-! ## A046303.P5578547636586930883

`A046325(n+1)/A046324(n+2)*A046302(n+2)`
-/

namespace A046303.P5578547636586930883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046325 (n + 1) : ℚ) / (A046324 (n + 2) : ℚ) * (A046302 (n + 2) : ℚ)

end

end A046303.P5578547636586930883

namespace A046303

/-- `A046325(n+1)/A046324(n+2)*A046302(n+2)` -/
def P5578547636586930883.Spec : Prop :=
  ∀ n, P5578547636586930883.a n = (A046303 (n + 1) : ℚ)

end A046303

/-! ## A046303.P16844405923478091211

`A046326(n+1)/A046325(n+2)*A046302(n+2)`
-/

namespace A046303.P16844405923478091211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046326 (n + 1) : ℚ) / (A046325 (n + 2) : ℚ) * (A046302 (n + 2) : ℚ)

end

end A046303.P16844405923478091211

namespace A046303

/-- `A046326(n+1)/A046325(n+2)*A046302(n+2)` -/
def P16844405923478091211.Spec : Prop :=
  ∀ n, P16844405923478091211.a n = (A046303 (n + 1) : ℚ)

end A046303

/-! ## A046303.P10221802224495317720

`A006094(n+1)*A046301(n+3)`
-/

namespace A046303.P10221802224495317720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A046301 (n + 3)

end

end A046303.P10221802224495317720

namespace A046303

/-- `A006094(n+1)*A046301(n+3)` -/
def P10221802224495317720.Spec : Prop :=
  ∀ n, P10221802224495317720.a n = A046303 (n + 1)

end A046303

/-! ## A046303.P3040414523668396891

`sqrt(A258155(n+1))*A006094(n+4)`
-/

namespace A046303.P3040414523668396891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A258155 (n + 1) : ℝ) * (A006094 (n + 4) : ℝ)

end

end A046303.P3040414523668396891

namespace A046303

/-- `sqrt(A258155(n+1))*A006094(n+4)` -/
def P3040414523668396891.Spec : Prop :=
  ∀ n, P3040414523668396891.a n = (A046303 (n + 1) : ℝ)

end A046303

/-! ## A046303.P5200331548072598831

`A000040(n+1)*A000040(n+2)*A000040(n+3)*A000040(n+4)*A000040(n+5)`
-/

namespace A046303.P5200331548072598831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) * A000040 (n + 3) * A000040 (n + 4) * A000040 (n + 5)

end

end A046303.P5200331548072598831

namespace A046303

/-- `A000040(n+1)*A000040(n+2)*A000040(n+3)*A000040(n+4)*A000040(n+5)` -/
def P5200331548072598831.Spec : Prop :=
  ∀ n, P5200331548072598831.a n = A046303 (n + 1)

end A046303

/-!
# A046304: Divisible by at least 5 primes (counted with multiplicity).

The programs for A046304, the canonical program `A046304.P14143779204867356569` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046304 has offset 1).

The definition of A046304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046304.P14143779204867356569

`lt[4, A001222(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A046304

/-- `lt[4, A001222(n+1)]+1` -/
def P14143779204867356569.Spec : Prop :=
  ∀ n, (P14143779204867356569.a n : ℤ) = A046304 (n + 1)

theorem P14143779204867356569.correct : P14143779204867356569.Spec := by
  intro n
  simp only [A046304, Nat.add_sub_cancel]

end A046304

/-! ## A046304.P4905853264791537351

`lt[4, A001222(abs(C(2, n)-n))]`
-/

namespace A046304.P4905853264791537351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046304.P4905853264791537351

namespace A046304

/-- `lt[4, A001222(abs(C(2, n)-n))]` -/
def P4905853264791537351.Spec : Prop :=
  ∀ n, (P4905853264791537351.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P13243518167301043860

`∪[A014614(n+1), A046305(n+1)]`
-/

namespace A046304.P13243518167301043860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046304.P13243518167301043860

namespace A046304

/-- `∪[A014614(n+1), A046305(n+1)]` -/
def P13243518167301043860.Spec : Prop :=
  ∀ n, (P13243518167301043860.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P18101220095086562062

`lt[4, A086436(n+1)]+1`
-/

namespace A046304.P18101220095086562062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046304.P18101220095086562062

namespace A046304

/-- `lt[4, A086436(n+1)]+1` -/
def P18101220095086562062.Spec : Prop :=
  ∀ n, (P18101220095086562062.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P12317610581677331834

`lt[6, A188581(n+1)/3]+1`
-/

namespace A046304.P12317610581677331834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188581 (n + 1) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A046304.P12317610581677331834

namespace A046304

/-- `lt[6, A188581(n+1)/3]+1` -/
def P12317610581677331834.Spec : Prop :=
  ∀ n, (P12317610581677331834.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P1718382353890426790

`lt[2, A061142(n+1)-20]+1`
-/

namespace A046304.P1718382353890426790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) - 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046304.P1718382353890426790

namespace A046304

/-- `lt[2, A061142(n+1)-20]+1` -/
def P1718382353890426790.Spec : Prop :=
  ∀ n, (P1718382353890426790.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P3707793122297987323

`lt[A048785(n), A160086(n)]`
-/

namespace A046304.P3707793122297987323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046304.P3707793122297987323

namespace A046304

/-- `lt[A048785(n), A160086(n)]` -/
def P3707793122297987323.Spec : Prop :=
  ∀ n, (P3707793122297987323.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P5026640706955632728

`lt[A032741(n)², A160086(n)]`
-/

namespace A046304.P5026640706955632728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046304.P5026640706955632728

namespace A046304

/-- `lt[A032741(n)², A160086(n)]` -/
def P5026640706955632728.Spec : Prop :=
  ∀ n, (P5026640706955632728.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P14935967907642844320

`lt[2, A001222(A028310(n))-2]`
-/

namespace A046304.P14935967907642844320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046304.P14935967907642844320

namespace A046304

/-- `lt[2, A001222(A028310(n))-2]` -/
def P14935967907642844320.Spec : Prop :=
  ∀ n, (P14935967907642844320.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P4343452049670784705

`lt[2*A074206(n), A160086(n)]`
-/

namespace A046304.P4343452049670784705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046304.P4343452049670784705

namespace A046304

/-- `lt[2*A074206(n), A160086(n)]` -/
def P4343452049670784705.Spec : Prop :=
  ∀ n, (P4343452049670784705.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P7696423989079689470

`lt[(A223135(n)+1)², A160086(n)]`
-/

namespace A046304.P7696423989079689470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A223135 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046304.P7696423989079689470

namespace A046304

/-- `lt[(A223135(n)+1)², A160086(n)]` -/
def P7696423989079689470.Spec : Prop :=
  ∀ n, (P7696423989079689470.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P12668907457830613675

`lt[5, A006530(A061142(n+1)+2)]+1`
-/

namespace A046304.P12668907457830613675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061142 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046304.P12668907457830613675

namespace A046304

/-- `lt[5, A006530(A061142(n+1)+2)]+1` -/
def P12668907457830613675.Spec : Prop :=
  ∀ n, (P12668907457830613675.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P3721818992473172689

`lt[2, A001222(A257143(n))-2]`
-/

namespace A046304.P3721818992473172689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257143 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046304.P3721818992473172689

namespace A046304

/-- `lt[2, A001222(A257143(n))-2]` -/
def P3721818992473172689.Spec : Prop :=
  ∀ n, (P3721818992473172689.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P6370767463521882254

`record[A032742(A046305(n+1))]`
-/

namespace A046304.P6370767463521882254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046304.P6370767463521882254

namespace A046304

/-- `record[A032742(A046305(n+1))]` -/
def P6370767463521882254.Spec : Prop :=
  ∀ n, P6370767463521882254.a n = A046304 (n + 1)

end A046304

/-! ## A046304.P13015390832301726604

`record[A057979(A046305(n+1)+1)]`
-/

namespace A046304.P13015390832301726604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A046305 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046304.P13015390832301726604

namespace A046304

/-- `record[A057979(A046305(n+1)+1)]` -/
def P13015390832301726604.Spec : Prop :=
  ∀ n, P13015390832301726604.a n = A046304 (n + 1)

end A046304

/-! ## A046304.P612510453068797154

`lt[A319410(2*n)², A160086(2*n)]`
-/

namespace A046304.P612510453068797154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046304.P612510453068797154

namespace A046304

/-- `lt[A319410(2*n)², A160086(2*n)]` -/
def P612510453068797154.Spec : Prop :=
  ∀ n, (P612510453068797154.a n : ℤ) = A046304 (n + 1)

end A046304

/-! ## A046304.P2558106762437889221

`record[A025480(A025480(A046307(n+1)))]`
-/

namespace A046304.P2558106762437889221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A025480 (A046307 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046304.P2558106762437889221

namespace A046304

/-- `record[A025480(A025480(A046307(n+1)))]` -/
def P2558106762437889221.Spec : Prop :=
  ∀ n, P2558106762437889221.a n = A046304 (n + 1)

end A046304

/-! ## A046304.P2428804960741525208

`record[A054576(A110654(A046309(n+1)))]`
-/

namespace A046304.P2428804960741525208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A110654 (A046309 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046304.P2428804960741525208

namespace A046304

/-- `record[A054576(A110654(A046309(n+1)))]` -/
def P2428804960741525208.Spec : Prop :=
  ∀ n, P2428804960741525208.a n = A046304 (n + 1)

end A046304

/-!
# A046305: Numbers that are divisible by at least 6 primes (counted with multiplicity).

The programs for A046305, the canonical program `A046305.P3389198561928894090` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046305 has offset 1).

The definition of A046305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046305.P9796312001260038456

`∪[A046306(n+1), A046307(n+1)]`
-/

namespace A046305.P9796312001260038456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046305.P9796312001260038456

namespace A046305

/-- `∪[A046306(n+1), A046307(n+1)]` -/
def P9796312001260038456.Spec : Prop :=
  ∀ n, (P9796312001260038456.a n : ℤ) = A046305 (n + 1)

end A046305

/-! ## A046305.P3389198561928894090

`lt[5, A001222(n+5)]+5`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A046305

/-- `lt[5, A001222(n+5)]+5` -/
def P3389198561928894090.Spec : Prop :=
  ∀ n, (P3389198561928894090.a n : ℤ) = A046305 (n + 1)

theorem P3389198561928894090.correct : P3389198561928894090.Spec := by
  intro n
  simp only [A046305, Nat.add_sub_cancel]

end A046305

/-! ## A046305.P8068979027629507695

`lt[5, A001222(abs(C(2, n)-n))]`
-/

namespace A046305.P8068979027629507695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046305.P8068979027629507695

namespace A046305

/-- `lt[5, A001222(abs(C(2, n)-n))]` -/
def P8068979027629507695.Spec : Prop :=
  ∀ n, (P8068979027629507695.a n : ℤ) = A046305 (n + 1)

end A046305

/-! ## A046305.P14315342127961317778

`lt[2, A360616(n+1)]+1`
-/

namespace A046305.P14315342127961317778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046305.P14315342127961317778

namespace A046305

/-- `lt[2, A360616(n+1)]+1` -/
def P14315342127961317778.Spec : Prop :=
  ∀ n, (P14315342127961317778.a n : ℤ) = A046305 (n + 1)

end A046305

/-! ## A046305.P11201625297824713060

`lt[5, A001222(A028310(n))]`
-/

namespace A046305.P11201625297824713060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046305.P11201625297824713060

namespace A046305

/-- `lt[5, A001222(A028310(n))]` -/
def P11201625297824713060.Spec : Prop :=
  ∀ n, (P11201625297824713060.a n : ℤ) = A046305 (n + 1)

end A046305

/-! ## A046305.P6449329675231484962

`lt[(2*A032741(n))², A160086(n)]`
-/

namespace A046305.P6449329675231484962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A032741 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046305.P6449329675231484962

namespace A046305

/-- `lt[(2*A032741(n))², A160086(n)]` -/
def P6449329675231484962.Spec : Prop :=
  ∀ n, (P6449329675231484962.a n : ℤ) = A046305 (n + 1)

end A046305

/-! ## A046305.P4212904275730649552

`lt[A319410(n)², A160086(n)]`
-/

namespace A046305.P4212904275730649552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046305.P4212904275730649552

namespace A046305

/-- `lt[A319410(n)², A160086(n)]` -/
def P4212904275730649552.Spec : Prop :=
  ∀ n, (P4212904275730649552.a n : ℤ) = A046305 (n + 1)

end A046305

/-! ## A046305.P2048509363604613716

`record[A032742(A046307(n+1))]`
-/

namespace A046305.P2048509363604613716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046307 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P2048509363604613716

namespace A046305

/-- `record[A032742(A046307(n+1))]` -/
def P2048509363604613716.Spec : Prop :=
  ∀ n, P2048509363604613716.a n = A046305 (n + 1)

end A046305

/-! ## A046305.P16416806099404354297

`lt[7, A001222(A004277(2*n))]`
-/

namespace A046305.P16416806099404354297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046305.P16416806099404354297

namespace A046305

/-- `lt[7, A001222(A004277(2*n))]` -/
def P16416806099404354297.Spec : Prop :=
  ∀ n, (P16416806099404354297.a n : ℤ) = A046305 (n + 1)

end A046305

/-! ## A046305.P3652428419584038060

`record[A246277(A046307(A286552(n)))]`
-/

namespace A046305.P3652428419584038060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046307 (A286552 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P3652428419584038060

namespace A046305

/-- `record[A246277(A046307(A286552(n)))]` -/
def P3652428419584038060.Spec : Prop :=
  ∀ n, P3652428419584038060.a n = A046305 (n + 1)

end A046305

/-! ## A046305.P4428199655930207219

`record[A078898(A046307(A003603(n+1)))]`
-/

namespace A046305.P4428199655930207219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A046307 (A003603 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P4428199655930207219

namespace A046305

/-- `record[A078898(A046307(A003603(n+1)))]` -/
def P4428199655930207219.Spec : Prop :=
  ∀ n, P4428199655930207219.a n = A046305 (n + 1)

end A046305

/-! ## A046305.P2550739582215538892

`record[A246277(A046307(A005350(n+1)))]`
-/

namespace A046305.P2550739582215538892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046307 (A005350 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P2550739582215538892

namespace A046305

/-- `record[A246277(A046307(A005350(n+1)))]` -/
def P2550739582215538892.Spec : Prop :=
  ∀ n, P2550739582215538892.a n = A046305 (n + 1)

end A046305

/-! ## A046305.P12076684903615698177

`record[A246277(A046307(A058933(n+1)))]`
-/

namespace A046305.P12076684903615698177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046307 (A058933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P12076684903615698177

namespace A046305

/-- `record[A246277(A046307(A058933(n+1)))]` -/
def P12076684903615698177.Spec : Prop :=
  ∀ n, P12076684903615698177.a n = A046305 (n + 1)

end A046305

/-! ## A046305.P2845101497153105908

`record[A246277(A046307(A092038(n+1)))]`
-/

namespace A046305.P2845101497153105908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046307 (A092038 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P2845101497153105908

namespace A046305

/-- `record[A246277(A046307(A092038(n+1)))]` -/
def P2845101497153105908.Spec : Prop :=
  ∀ n, P2845101497153105908.a n = A046305 (n + 1)

end A046305

/-! ## A046305.P9729751865223681596

`record[A046307(n+1)/A089120(A046307(n+1)+1)]`
-/

namespace A046305.P9729751865223681596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046307 (n + 1) : ℚ) / (A089120 (A046307 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P9729751865223681596

namespace A046305

/-- `record[A046307(n+1)/A089120(A046307(n+1)+1)]` -/
def P9729751865223681596.Spec : Prop :=
  ∀ n, P9729751865223681596.a n = (A046305 (n + 1) : ℚ)

end A046305

/-! ## A046305.P6308037919114162570

`record[A054576(A046309(n+1))]`
-/

namespace A046305.P6308037919114162570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A046309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046305.P6308037919114162570

namespace A046305

/-- `record[A054576(A046309(n+1))]` -/
def P6308037919114162570.Spec : Prop :=
  ∀ n, P6308037919114162570.a n = A046305 (n + 1)

end A046305

/-! ## A046305.P756106140729860209

`lt[A287001(A287001(n+1)), A123667(n+1)]+1`
-/

namespace A046305.P756106140729860209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287001 (A287001 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046305.P756106140729860209

namespace A046305

/-- `lt[A287001(A287001(n+1)), A123667(n+1)]+1` -/
def P756106140729860209.Spec : Prop :=
  ∀ n, (P756106140729860209.a n : ℤ) = A046305 (n + 1)

end A046305

/-!
# A046306: Numbers that are divisible by exactly 6 primes with multiplicity.

The programs for A046306, there is no canonical definition to state claims against.
-/

/-! ## A046306.P10033599004363622561

`∪[A110231(n+1), A110232(n+1)]`
-/

namespace A046306.P10033599004363622561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046306.P10033599004363622561

/-! ## A046306.P10031189754504720184

`eq[6, A001222(n+1)]+1`
-/

namespace A046306.P10031189754504720184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046306.P10031189754504720184

/-! ## A046306.P17601541279959242098

`record[A046308(n+1)/A020639(A046308(n+1))]`
-/

namespace A046306.P17601541279959242098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046308 (n + 1) : ℚ) / (A020639 (A046308 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046306.P17601541279959242098

/-! ## A046306.P9452960644896355135

`record[A332893(A046308(n+1))]`
-/

namespace A046306.P9452960644896355135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A046308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046306.P9452960644896355135

/-! ## A046306.P11170505756179064778

`eq[1, A101637(A054576(n+1))]+1`
-/

namespace A046306.P11170505756179064778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A054576 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046306.P11170505756179064778

/-! ## A046306.P1834610016545594404

`record[A117358(A046312(n+1))]`
-/

namespace A046306.P1834610016545594404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046306.P1834610016545594404

/-! ## A046306.P2469383393930923999

`record[A117358(2*A046310(n+1))]`
-/

namespace A046306.P2469383393930923999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A046310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046306.P2469383393930923999

/-! ## A046306.P17187641416254708775

`record[A152271(A046308(n+1)-1)]`
-/

namespace A046306.P17187641416254708775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A046308 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046306.P17187641416254708775

/-! ## A046306.P16779401255115326469

`A110654(∩[2*n, A046308(n+1)])`
-/

namespace A046306.P16779401255115326469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A046306.P16779401255115326469

/-! ## A046306.P18244257513352991783

`record[A174571(A046310(n+1))]`
-/

namespace A046306.P18244257513352991783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A046310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046306.P18244257513352991783

/-! ## A046306.P4257270239410277246

`record[A174571(2*A046308(n+1))]`
-/

namespace A046306.P4257270239410277246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A046308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046306.P4257270239410277246

/-! ## A046306.P10795100328473490057

`A207790(2*8*(4*n+2)+1)`
-/

namespace A046306.P10795100328473490057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * (8 * (4 * n + 2)) + 1)

end

end A046306.P10795100328473490057

/-!
# A046307: Numbers that are divisible by at least 7 primes (counted with multiplicity).

The programs for A046307, there is no canonical definition to state claims against.
-/

/-! ## A046307.P2576754276454801483

`∪[A046308(n+1), A046309(n+1)]`
-/

namespace A046307.P2576754276454801483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046307.P2576754276454801483

/-! ## A046307.P1594601123328927369

`record[A273943(A046309(n+1))]`
-/

namespace A046307.P1594601123328927369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P1594601123328927369

/-! ## A046307.P13354792203875117029

`record[A332893(A332893(A046311(n+1)))]`
-/

namespace A046307.P13354792203875117029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A332893 (A046311 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P13354792203875117029

/-! ## A046307.P6341423425127066867

`A014682(record[A245092(A046309(n+1))])`
-/

namespace A046307.P6341423425127066867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A046309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046307.P6341423425127066867

/-! ## A046307.P667872778119592265

`record[A322982(A046309(A003963(n+1)))]`
-/

namespace A046307.P667872778119592265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A046309 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P667872778119592265

/-! ## A046307.P1983440417626283823

`record[A117358(A046313(n+1))]`
-/

namespace A046307.P1983440417626283823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P1983440417626283823

/-! ## A046307.P2797598329831905243

`record[A032742(A046309(A005378(n)))]`
-/

namespace A046307.P2797598329831905243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046309 (A005378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P2797598329831905243

/-! ## A046307.P8996313535107218211

`record[A032742(A046309(A020915(n)))]`
-/

namespace A046307.P8996313535107218211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046309 (A020915 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P8996313535107218211

/-! ## A046307.P3546069996877465703

`record[A252463(A046309(A246694(n)))]`
-/

namespace A046307.P3546069996877465703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A046309 (A246694 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P3546069996877465703

/-! ## A046307.P10990456941011607758

`record[A032742(A046309(A032742(n+1)))]`
-/

namespace A046307.P10990456941011607758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046309 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P10990456941011607758

/-! ## A046307.P4054202145886679845

`record[A078898(A046309(A000027(n+1)))]`
-/

namespace A046307.P4054202145886679845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A046309 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P4054202145886679845

/-! ## A046307.P11410137617740870024

`A000027(record[A246277(A046309(n+1))])`
-/

namespace A046307.P11410137617740870024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046307.P11410137617740870024

/-! ## A046307.P4368491058070342324

`record[A246277(A046309(A003602(n+1)))]`
-/

namespace A046307.P4368491058070342324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A046309 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046307.P4368491058070342324

/-! ## A046307.P10131770989271419488

`A000027(record[A252463(A046309(n+1))])`
-/

namespace A046307.P10131770989271419488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A046309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046307.P10131770989271419488

/-! ## A046307.P17135140893028784513

`A004525(lcm(2, A046309(n+1)))`
-/

namespace A046307.P17135140893028784513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A046309 (n + 1)))

end

end A046307.P17135140893028784513

/-! ## A046307.P17375085992940272807

`A028234(A308439(n+1))*A029578(A046309(n+1))`
-/

namespace A046307.P17375085992940272807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A308439 (n + 1)).toNat * A029578 (A046309 (n + 1)).toNat

end

end A046307.P17375085992940272807

/-! ## A046307.P15241261541079751127

`A046309(n+1)/A086152(A158350(n+1))`
-/

namespace A046307.P15241261541079751127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046309 (n + 1) : ℚ) / (A086152 (A158350 (n + 1)).toNat : ℚ)

end

end A046307.P15241261541079751127

/-! ## A046307.P15756169076488320863

`A046309(n+1)/A001285(A130321(n))`
-/

namespace A046307.P15756169076488320863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046309 (n + 1) : ℚ) / (A001285 (A130321 n).toNat : ℚ)

end

end A046307.P15756169076488320863

/-!
# A046308: Numbers that are divisible by exactly 7 primes counting multiplicity.

The programs for A046308, there is no canonical definition to state claims against.
-/

/-! ## A046308.P12683302335854480342

`∪[A110289(n+1), A110290(n+1)]`
-/

namespace A046308.P12683302335854480342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046308.P12683302335854480342

/-! ## A046308.P62735482967321869

`Δ[A086059(A000007(n)+n)%A086059(n+1)]`
-/

namespace A046308.P62735482967321869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086059 (A000007 n + (n : ℤ)).toNat) (A086059 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046308.P62735482967321869

/-! ## A046308.P11847086371024068645

`record[A046310(n+1)/A020639(A046310(n+1))]`
-/

namespace A046308.P11847086371024068645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046310 (n + 1) : ℚ) / (A020639 (A046310 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P11847086371024068645

/-! ## A046308.P17848570727575686139

`record[A318518(A046310(n+1))]`
-/

namespace A046308.P17848570727575686139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A046310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P17848570727575686139

/-! ## A046308.P14785528115963995418

`record[A273943(A273943(A046312(n+1)))]`
-/

namespace A046308.P14785528115963995418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A273943 (A046312 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P14785528115963995418

/-! ## A046308.P16574443555520170267

`record[A117358(A046314(n+1))]`
-/

namespace A046308.P16574443555520170267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046314 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P16574443555520170267

/-! ## A046308.P17145020834666034102

`record[A278529(A046310(A008619(n)))]`
-/

namespace A046308.P17145020834666034102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A046310 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P17145020834666034102

/-! ## A046308.P16215894994343388643

`record[A278529(A046310(A210434(n)))]`
-/

namespace A046308.P16215894994343388643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A046310 (A210434 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P16215894994343388643

/-! ## A046308.P16251250090187735909

`record[A003602(A046310(n+1)-1)]`
-/

namespace A046308.P16251250090187735909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A046310 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P16251250090187735909

/-! ## A046308.P3991795894045415909

`record[A135020(A046310(n+1)-1)]`
-/

namespace A046308.P3991795894045415909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A046310 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P3991795894045415909

/-! ## A046308.P1697760487493940297

`record[A032742(A046310(A005378(n)))]`
-/

namespace A046308.P1697760487493940297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046310 (A005378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P1697760487493940297

/-! ## A046308.P6160195269255655604

`record[A032742(A046310(A008620(n)))]`
-/

namespace A046308.P6160195269255655604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046310 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P6160195269255655604

/-! ## A046308.P3130402676410807469

`record[A025480(A046310(A154958(n)))]`
-/

namespace A046308.P3130402676410807469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A046310 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P3130402676410807469

/-! ## A046308.P205198991402083228

`record[A032742(A046310(A003602(n+1)))]`
-/

namespace A046308.P205198991402083228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046310 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P205198991402083228

/-! ## A046308.P11462567626047800184

`record[A032742(A046310(A003963(n+1)))]`
-/

namespace A046308.P11462567626047800184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046310 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P11462567626047800184

/-! ## A046308.P5165966689947260822

`record[A032742(A046310(A032742(n+1)))]`
-/

namespace A046308.P5165966689947260822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046310 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046308.P5165966689947260822

/-!
# A046309: Numbers that are divisible by at least 8 primes (counted with multiplicity).

The programs for A046309, there is no canonical definition to state claims against.
-/

/-! ## A046309.P226832254926680405

`∪[A046310(n+1), A046311(n+1)]`
-/

namespace A046309.P226832254926680405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046309.P226832254926680405

/-! ## A046309.P13786890847325099238

`record[A273943(A046311(n+1))]`
-/

namespace A046309.P13786890847325099238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046309.P13786890847325099238

/-! ## A046309.P9109500505177437766

`record[A318518(A046311(n+1)%A069273(n+1))]`
-/

namespace A046309.P9109500505177437766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (Int.tmod (A046311 (n + 1)) (A069273 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046309.P9109500505177437766

/-! ## A046309.P13045036658027926522

`record[A332893(A046311(n+1))%A069272(n+1)]`
-/

namespace A046309.P13045036658027926522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332893 (A046311 (n + 1)).toNat) (A069272 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046309.P13045036658027926522

/-! ## A046309.P12379012702680210421

`record[A318518(A046311(n+1))%A137484(n+1)]`
-/

namespace A046309.P12379012702680210421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318518 (A046311 (n + 1)).toNat) (A137484 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046309.P12379012702680210421

/-! ## A046309.P3157150892871201129

`record[A008836(n+1)²*A318518(A046311(n+1))]`
-/

namespace A046309.P3157150892871201129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A318518 (A046311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046309.P3157150892871201129

/-! ## A046309.P11632913222136499076

`record[A273943(A273943(A046313(n+1)))]`
-/

namespace A046309.P11632913222136499076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A273943 (A046313 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046309.P11632913222136499076

/-! ## A046309.P6569692691282624024

`A332893(record[A245092(A046311(n+1))])`
-/

namespace A046309.P6569692691282624024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A046311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046309.P6569692691282624024

/-! ## A046309.P4017313306111917652

`A038572(lcm(2, A046311(n+1)))`
-/

namespace A046309.P4017313306111917652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A046311 (n + 1)))

end

end A046309.P4017313306111917652

/-! ## A046309.P15698814075594703182

`A014683(record[A038572(A046311(n+1))])`
-/

namespace A046309.P15698814075594703182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A046311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046309.P15698814075594703182

/-! ## A046309.P4732147541119575684

`A288469(record[A014682(A046311(n+1))])`
-/

namespace A046309.P4732147541119575684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A046311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046309.P4732147541119575684

/-! ## A046309.P15682175148038823483

`A000720(A000040(A046311(n+1)/2))`
-/

namespace A046309.P15682175148038823483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (SequenceMachineLib.roundAway ((A046311 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A046309.P15682175148038823483

/-! ## A046309.P2858802115115393362

`A046311(n+1)/A068068(A030079(n+1))`
-/

namespace A046309.P2858802115115393362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046311 (n + 1) : ℚ) / (A068068 (A030079 (n + 1)).toNat : ℚ)

end

end A046309.P2858802115115393362

/-! ## A046309.P12564536846035458888

`A117358(2*A046313(n+1))`
-/

namespace A046309.P12564536846035458888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A046313 (n + 1)).toNat

end

end A046309.P12564536846035458888

/-! ## A046309.P10215030131933631477

`A046311(n+1)/A001222(A333747(n+1))`
-/

namespace A046309.P10215030131933631477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046311 (n + 1) : ℚ) / (A001222 (A333747 (n + 1)).toNat : ℚ)

end

end A046309.P10215030131933631477

/-! ## A046309.P2091737076145114328

`A046311(n+1)/A000005(A207527(n+1))`
-/

namespace A046309.P2091737076145114328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046311 (n + 1) : ℚ) / (A000005 (A207527 (n + 1)).toNat : ℚ)

end

end A046309.P2091737076145114328

/-! ## A046309.P17587643361685329683

`A046311(n+1)/A000005(A118638(n+1))`
-/

namespace A046309.P17587643361685329683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046311 (n + 1) : ℚ) / (A000005 (A118638 (n + 1)).toNat : ℚ)

end

end A046309.P17587643361685329683

/-! ## A046309.P288916136562945028

`A046311(n+1)/A020639(A088827(A060461(n+1)))`
-/

namespace A046309.P288916136562945028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046311 (n + 1) : ℚ) / (A020639 (A088827 (A060461 (n + 1)).toNat).toNat : ℚ)

end

end A046309.P288916136562945028

/-!
# A046310: Numbers that are divisible by exactly 8 primes counting multiplicity.

The programs for A046310, there is no canonical definition to state claims against.
-/

/-! ## A046310.P11498515967852361257

`∪[A110296(n+1), A110297(n+1)]`
-/

namespace A046310.P11498515967852361257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046310.P11498515967852361257

/-! ## A046310.P13030199551371062343

`record[A273943(A046312(n+1))]`
-/

namespace A046310.P13030199551371062343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046310.P13030199551371062343

/-! ## A046310.P2968615775005009560

`record[A332893(A046312(n+1))%A083815(n+1)]`
-/

namespace A046310.P2968615775005009560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332893 (A046312 (n + 1)).toNat) (A083815 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046310.P2968615775005009560

/-! ## A046310.P11049257805090766565

`record[A332893(A046312(n+1))]%A110296(n+1)`
-/

namespace A046310.P11049257805090766565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A046312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A110296 (n + 1))

end

end A046310.P11049257805090766565

/-! ## A046310.P17872202979338606968

`record[A332893(A046312(n+1)%A137484(n+1))]`
-/

namespace A046310.P17872202979338606968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (Int.tmod (A046312 (n + 1)) (A137484 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046310.P17872202979338606968

/-! ## A046310.P18423106775573534090

`record[A273943(A273943(A046314(n+1)))]`
-/

namespace A046310.P18423106775573534090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A273943 (A046314 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046310.P18423106775573534090

/-! ## A046310.P5732866635036431542

`A038572(lcm(2, A046312(n+1)))`
-/

namespace A046310.P5732866635036431542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A046312 (n + 1)))

end

end A046310.P5732866635036431542

/-! ## A046310.P17609122159237273900

`A046312(n+1)/A000034(A157924(n+1))`
-/

namespace A046310.P17609122159237273900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046312 (n + 1) : ℚ) / (A000034 (A157924 (n + 1)).toNat : ℚ)

end

end A046310.P17609122159237273900

/-! ## A046310.P8852511218850610966

`A046312(n+1)/2%A273756(A000010(n+1))`
-/

namespace A046310.P8852511218850610966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046312 (n + 1) : ℚ) / (Int.tmod 2 (A273756 (A000010 (n + 1)).toNat) : ℚ)

end

end A046310.P8852511218850610966

/-! ## A046310.P7974637078165774168

`A046312(n+1)/2%A273756(n)`
-/

namespace A046310.P7974637078165774168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046312 (n + 1) : ℚ) / (Int.tmod 2 (A273756 n) : ℚ)

end

end A046310.P7974637078165774168

/-! ## A046310.P5033511905570117778

`A046312(n+1)/A000034(A002061(n))`
-/

namespace A046310.P5033511905570117778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046312 (n + 1) : ℚ) / (A000034 (A002061 n).toNat : ℚ)

end

end A046310.P5033511905570117778

/-! ## A046310.P3850790950838696283

`(A046312(n+1)/2)%A046312((n+1)²)`
-/

namespace A046310.P3850790950838696283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A046312 (n + 1) : ℚ) / 2)) (A046312 ((n + 1) ^ 2))

end

end A046310.P3850790950838696283

/-!
# A046311: Numbers that are divisible by at least 9 primes (counted with multiplicity).

The programs for A046311, there is no canonical definition to state claims against.
-/

/-! ## A046311.P10634672399221625149

`∪[A046312(n+1), A046313(n+1)]`
-/

namespace A046311.P10634672399221625149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046311.P10634672399221625149

/-! ## A046311.P9918226577510837765

`A273943(lcm(2, A046313(n+1)))`
-/

namespace A046311.P9918226577510837765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A046313 (n + 1)))

end

end A046311.P9918226577510837765

/-! ## A046311.P6878329152671980247

`A046313(n+1)/A035214(A008795(n))`
-/

namespace A046311.P6878329152671980247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046313 (n + 1) : ℚ) / (A035214 (A008795 n).toNat : ℚ)

end

end A046311.P6878329152671980247

/-! ## A046311.P9885826970536590351

`A046313(n+1)/A336158(A142519(n+1))`
-/

namespace A046311.P9885826970536590351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046313 (n + 1) : ℚ) / (A336158 (A142519 (n + 1)).toNat : ℚ)

end

end A046311.P9885826970536590351

/-! ## A046311.P17068516979627634835

`A005843(A046309(n+1)+n)-2*n`
-/

namespace A046311.P17068516979627634835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A046309 (n + 1) + (n : ℤ)).toNat - (2 * n : ℤ)

end

end A046311.P17068516979627634835

/-! ## A046311.P9965112272783253431

`A034444(p?[A256792(n+1)])*A046309(n+1)`
-/

namespace A046311.P9965112272783253431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A046309 (n + 1)

end

end A046311.P9965112272783253431

/-! ## A046311.P15782316044054524156

`A110962(2*A046313(n+1))`
-/

namespace A046311.P15782316044054524156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * A046313 (n + 1)).toNat

end

end A046311.P15782316044054524156

/-! ## A046311.P7138660279681605636

`A020639(A084849(A133090(n+1)))*A046309(n+1)`
-/

namespace A046311.P7138660279681605636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084849 (A133090 (n + 1)).toNat).toNat * A046309 (n + 1)

end

end A046311.P7138660279681605636

/-! ## A046311.P7295333869020514611

`2*A046309(A008836((n+1)²)+n)`
-/

namespace A046311.P7295333869020514611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046309 (A008836 ((n + 1) ^ 2) + (n : ℤ)).toNat

end

end A046311.P7295333869020514611

/-!
# A046312: Numbers that are divisible by exactly 9 primes with multiplicity.

The programs for A046312, there is no canonical definition to state claims against.
-/

/-! ## A046312.P10926853078927894583

`record[A273943(A046314(n+1))]`
-/

namespace A046312.P10926853078927894583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046314 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P10926853078927894583

/-! ## A046312.P12177424999061387871

`record[A273943(floor(A069272(n+1)/2))]`
-/

namespace A046312.P12177424999061387871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ⌊(A069272 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P12177424999061387871

/-! ## A046312.P14409851679734775890

`record[A273943(floor(A069273(n+1)/4))]`
-/

namespace A046312.P14409851679734775890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ⌊(A069273 (n + 1) : ℚ) / 4⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P14409851679734775890

/-! ## A046312.P4312879394941210015

`record[A273943(floor(A069274(n+1)/8))]`
-/

namespace A046312.P4312879394941210015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ⌊(A069274 (n + 1) : ℚ) / 8⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P4312879394941210015

/-! ## A046312.P9109637972771911241

`record[A273943(floor(A069275(n+1)/16))]`
-/

namespace A046312.P9109637972771911241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ⌊(A069275 (n + 1) : ℚ) / 16⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P9109637972771911241

/-! ## A046312.P17519955468099288702

`record[A318518(A069272(n+1)/2)]`
-/

namespace A046312.P17519955468099288702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (SequenceMachineLib.roundAway ((A069272 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P17519955468099288702

/-! ## A046312.P6312784495123639580

`record[A326139(A069272(n+1)/2)]`
-/

namespace A046312.P6312784495123639580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (SequenceMachineLib.roundAway ((A069272 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P6312784495123639580

/-! ## A046312.P13499537145587996164

`record[A318518(A069273(n+1)/4)]`
-/

namespace A046312.P13499537145587996164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (SequenceMachineLib.roundAway ((A069273 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P13499537145587996164

/-! ## A046312.P16730341476264914485

`record[A332893(A069273(n+1)/4)]`
-/

namespace A046312.P16730341476264914485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (SequenceMachineLib.roundAway ((A069273 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P16730341476264914485

/-! ## A046312.P2449005691151742674

`record[A332893(A046314(2*n+1-n))]`
-/

namespace A046312.P2449005691151742674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A046314 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P2449005691151742674

/-! ## A046312.P9982081892537212410

`record[A326139(A046314(A117910(n)))]`
-/

namespace A046312.P9982081892537212410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A046314 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P9982081892537212410

/-! ## A046312.P12854013808371331993

`record[A318518(A069272(n+1)-A046314(n+1))]`
-/

namespace A046312.P12854013808371331993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A069272 (n + 1) - A046314 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P12854013808371331993

/-! ## A046312.P7423635140391325065

`record[A332893(A046314(n+1)%A069275(n+1))]`
-/

namespace A046312.P7423635140391325065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (Int.tmod (A046314 (n + 1)) (A069275 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P7423635140391325065

/-! ## A046312.P11811939531470306480

`record[A332893(A046314(n+1))%A112444(n+1)]`
-/

namespace A046312.P11811939531470306480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332893 (A046314 (n + 1)).toNat) (A112444 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046312.P11811939531470306480

/-! ## A046312.P12078705711559804912

`A014682(lcm(2, A046314(n+1)))`
-/

namespace A046312.P12078705711559804912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A046314 (n + 1)))

end

end A046312.P12078705711559804912

/-! ## A046312.P1629762631748720986

`A014682(2*A014682(A046314(n+1)))`
-/

namespace A046312.P1629762631748720986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A014682 (A046314 (n + 1)).toNat).toNat

end

end A046312.P1629762631748720986

/-! ## A046312.P8307576268147084860

`A046314(n+1)/A085058(A105093(n+1))`
-/

namespace A046312.P8307576268147084860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046314 (n + 1) : ℚ) / (A085058 (A105093 (n + 1)).toNat : ℚ)

end

end A046312.P8307576268147084860

/-! ## A046312.P286244514983160812

`A014682(A069273(n+1)/2)/2`
-/

namespace A046312.P286244514983160812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (SequenceMachineLib.roundAway ((A069273 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A046312.P286244514983160812

/-!
# A046313: Numbers that are divisible by at least 10 primes (counted with multiplicity).

The programs for A046313, there is no canonical definition to state claims against.
-/

/-! ## A046313.P9784976223177072507

`2*A046311(n+1)/A089026(A332386(n+1)+1)`
-/

namespace A046313.P9784976223177072507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A046311 (n + 1) : ℚ) / (A089026 (A332386 (n + 1) + 1).toNat : ℚ)

end

end A046313.P9784976223177072507

/-! ## A046313.P1158894713336585893

`A273943(2*2*A046311(n+1))`
-/

namespace A046313.P1158894713336585893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * (2 * A046311 (n + 1))).toNat

end

end A046313.P1158894713336585893

/-! ## A046313.P7624222203177624414

`A014682(2*2*A046311(n+1))`
-/

namespace A046313.P7624222203177624414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * (2 * A046311 (n + 1))).toNat

end

end A046313.P7624222203177624414

/-! ## A046313.P12838643107201337119

`A046311(n+1)*A369051(A217577(n+1))`
-/

namespace A046313.P12838643107201337119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046311 (n + 1) * A369051 (A217577 (n + 1)).toNat

end

end A046313.P12838643107201337119

/-! ## A046313.P16402761574421338800

`2*A046311(n+1)*A335162(∑[n])`
-/

namespace A046313.P16402761574421338800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046311 (n + 1) * A335162 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A046313.P16402761574421338800

/-! ## A046313.P843278865314756889

`A046311(n+1)*A154813(A335162(∑[n]))`
-/

namespace A046313.P843278865314756889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046311 (n + 1) * A154813 (A335162 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A046313.P843278865314756889

/-! ## A046313.P6142832898314478243

`2*(A005843(A046309(n+1)+n)-2*n)`
-/

namespace A046313.P6142832898314478243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005843 (A046309 (n + 1) + (n : ℤ)).toNat - (2 * n : ℤ))

end

end A046313.P6142832898314478243

/-! ## A046313.P3691029625094993946

`∑{d}[A046311(n+1), A005843(A000010(#))]`
-/

namespace A046313.P3691029625094993946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005843 (A000010 d).toNat

end

end A046313.P3691029625094993946

/-! ## A046313.P17140722374592891312

`A046311(n+1)²/A038572(lcm(2, A046311(n+1)))`
-/

namespace A046313.P17140722374592891312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046311 (n + 1) ^ 2 : ℚ) / (A038572 (Int.lcm 2 (A046311 (n + 1))) : ℚ)

end

end A046313.P17140722374592891312

/-! ## A046313.P70715569371360359

`2*A034444(p?[A256792(n+1)])*A046309(n+1)`
-/

namespace A046313.P70715569371360359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034444 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A046309 (n + 1))

end

end A046313.P70715569371360359

/-! ## A046313.P12089434703452365077

`A046311(n+1)*A068068(A030079(n+1))`
-/

namespace A046313.P12089434703452365077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046311 (n + 1) * A068068 (A030079 (n + 1)).toNat

end

end A046313.P12089434703452365077

/-! ## A046313.P1409841669703751790

`A007426(A210758(n+1))*A046309(n+1)`
-/

namespace A046313.P1409841669703751790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A210758 (n + 1)).toNat * A046309 (n + 1)

end

end A046313.P1409841669703751790

/-! ## A046313.P11477971378916338710

`A046309(n+1)*A226294(A226306(n+1))`
-/

namespace A046313.P11477971378916338710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1) * A226294 (A226306 (n + 1)).toNat

end

end A046313.P11477971378916338710

/-! ## A046313.P14392943521625047106

`A046309(n+1)*A174571(A071696(n+1))`
-/

namespace A046313.P14392943521625047106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1) * A174571 (A071696 (n + 1)).toNat

end

end A046313.P14392943521625047106

/-! ## A046313.P288183912485156898

`4*A255407(A046309(n+1))`
-/

namespace A046313.P288183912485156898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A255407 (A046309 (n + 1)).toNat

end

end A046313.P288183912485156898

/-! ## A046313.P11362489383433140144

`A318518(2*2*A046311(n+1))`
-/

namespace A046313.P11362489383433140144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (2 * (2 * A046311 (n + 1))).toNat

end

end A046313.P11362489383433140144

/-! ## A046313.P487531079856149126

`A332893(2*2*A046311(n+1))`
-/

namespace A046313.P487531079856149126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (2 * (2 * A046311 (n + 1))).toNat

end

end A046313.P487531079856149126

/-! ## A046313.P6540487613785431741

`A000005(A333747(n+1))*A046309(n+1)`
-/

namespace A046313.P6540487613785431741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A333747 (n + 1)).toNat * A046309 (n + 1)

end

end A046313.P6540487613785431741

/-! ## A046313.P13424732867130776977

`A001222(A333747(n+1))*A046311(n+1)`
-/

namespace A046313.P13424732867130776977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A333747 (n + 1)).toNat * A046311 (n + 1)

end

end A046313.P13424732867130776977

/-! ## A046313.P8622554906957078175

`A000005(A207527(n+1))*A046311(n+1)`
-/

namespace A046313.P8622554906957078175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A207527 (n + 1)).toNat * A046311 (n + 1)

end

end A046313.P8622554906957078175

/-!
# A046314: Numbers that are divisible by exactly 10 primes with multiplicity.

The programs for A046314, there is no canonical definition to state claims against.
-/

/-! ## A046314.P111919457525462595

`A069273(n+1)/A030727(A030736(n+1))`
-/

namespace A046314.P111919457525462595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A030727 (A030736 (n + 1)).toNat : ℚ)

end

end A046314.P111919457525462595

/-! ## A046314.P11921531929796241941

`A069273(n+1)/A001221(A140078(3*n+2))`
-/

namespace A046314.P11921531929796241941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A001221 (A140078 (3 * n + 2)).toNat : ℚ)

end

end A046314.P11921531929796241941

/-! ## A046314.P12248707802149778103

`A069273(n+1)/A319357(A155140(n+1))²`
-/

namespace A046314.P12248707802149778103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A319357 (A155140 (n + 1)).toNat ^ 2 : ℚ)

end

end A046314.P12248707802149778103

/-! ## A046314.P17262275024162433057

`(A069272(n+1)/2)%A037437(A006567(n+1))`
-/

namespace A046314.P17262275024162433057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A069272 (n + 1) : ℚ) / 2)) (A037437 (A006567 (n + 1)).toNat)

end

end A046314.P17262275024162433057

/-! ## A046314.P2440313321475266660

`A069273(n+1)/A123932(A262829(n+1))`
-/

namespace A046314.P2440313321475266660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A123932 (A262829 (n + 1)).toNat : ℚ)

end

end A046314.P2440313321475266660

/-! ## A046314.P801980518084831255

`floor(A069279(n+1)/A061142(A046308(n+1)))/2`
-/

namespace A046314.P801980518084831255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A069279 (n + 1) : ℚ) / (A061142 (A046308 (n + 1)).toNat : ℚ)⌋ : ℚ) / 2

end

end A046314.P801980518084831255

/-! ## A046314.P10949956229807141203

`round(A069275(n+1)/A073093(A046308(n+1)))/2`
-/

namespace A046314.P10949956229807141203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A069275 (n + 1) : ℚ) / (A073093 (A046308 (n + 1)).toNat : ℚ)) : ℚ) / 2

end

end A046314.P10949956229807141203

/-! ## A046314.P296629626496600566

`A069272(n+1)/A007913(2*(n+2)²)`
-/

namespace A046314.P296629626496600566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069272 (n + 1) : ℚ) / (A007913 (2 * (n + 2) ^ 2) : ℚ)

end

end A046314.P296629626496600566

/-! ## A046314.P4422668016754382878

`A069274(n+1)/A000005(A046401(n+1))`
-/

namespace A046314.P4422668016754382878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069274 (n + 1) : ℚ) / (A000005 (A046401 (n + 1)).toNat : ℚ)

end

end A046314.P4422668016754382878

/-! ## A046314.P16715062430718966305

`A069275(n+1)/A040056(A157924(n+1))`
-/

namespace A046314.P16715062430718966305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A040056 (A157924 (n + 1)).toNat : ℚ)

end

end A046314.P16715062430718966305

/-! ## A046314.P17294213222279758080

`A069275(n+1)/A040056(A000124(n))`
-/

namespace A046314.P17294213222279758080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069275 (n + 1) : ℚ) / (A040056 (A000124 n).toNat : ℚ)

end

end A046314.P17294213222279758080

/-! ## A046314.P14452267239542780450

`A020639(Δ[n^3]+1)*A069272(n+1)/4`
-/

namespace A046314.P14452267239542780450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat * A069272 (n + 1) : ℚ) / 4

end

end A046314.P14452267239542780450

/-! ## A046314.P14099619161695556308

`∑{e}[A001248(n+1), #*A046312(n+1)]`
-/

namespace A046314.P14099619161695556308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A046312 (n + 1)

end

end A046314.P14099619161695556308

/-! ## A046314.P13453619309530328530

`A000005(A210758(n+1))*A046312(n+1)`
-/

namespace A046314.P13453619309530328530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A210758 (n + 1)).toNat * A046312 (n + 1)

end

end A046314.P13453619309530328530

/-! ## A046314.P12877508496016687782

`2*A046312(n+1)%A165599(n)`
-/

namespace A046314.P12877508496016687782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A046312 (n + 1)) (A165599 n)

end

end A046314.P12877508496016687782

/-! ## A046314.P8472827532731882297

`A273943(A069272(n+1))`
-/

namespace A046314.P8472827532731882297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A069272 (n + 1)).toNat

end

end A046314.P8472827532731882297

/-! ## A046314.P6231131678664240135

`A273943(A069273(n+1)/2)`
-/

namespace A046314.P6231131678664240135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.roundAway ((A069273 (n + 1) : ℚ) / 2)).toNat

end

end A046314.P6231131678664240135

/-! ## A046314.P3447139373401368846

`A014682(A069273(n+1)/2)`
-/

namespace A046314.P3447139373401368846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A069273 (n + 1) : ℚ) / 2)).toNat

end

end A046314.P3447139373401368846

/-! ## A046314.P16089072925044203888

`A069273(n+1)/A000005(A333747(n+1))`
-/

namespace A046314.P16089072925044203888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069273 (n + 1) : ℚ) / (A000005 (A333747 (n + 1)).toNat : ℚ)

end

end A046314.P16089072925044203888

/-!
# A046315: Odd semiprimes: odd numbers divisible by exactly 2 primes (counted with multiplicity).

The programs for A046315, the canonical program `A046315.P4459434404324554998` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046315 has offset 1).

The definition of A046315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046315.P10148937138117540922

`sqrt(A075730(n+1))`
-/

namespace A046315.P10148937138117540922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075730 (n + 1) : ℝ)

end

end A046315.P10148937138117540922

namespace A046315

/-- `sqrt(A075730(n+1))` -/
def P10148937138117540922.Spec : Prop :=
  ∀ n, P10148937138117540922.a n = (A046315 (n + 1) : ℝ)

end A046315

/-! ## A046315.P16697893717589148755

`A176406(n+1)+2`
-/

namespace A046315.P16697893717589148755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1) + 2

end

end A046315.P16697893717589148755

namespace A046315

/-- `A176406(n+1)+2` -/
def P16697893717589148755.Spec : Prop :=
  ∀ n, P16697893717589148755.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P5928517310512418759

`2*eq[2, A001222(2*n+1)]+1`
-/

namespace A046315.P5928517310512418759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046315.P5928517310512418759

namespace A046315

/-- `2*eq[2, A001222(2*n+1)]+1` -/
def P5928517310512418759.Spec : Prop :=
  ∀ n, (P5928517310512418759.a n : ℤ) = A046315 (n + 1)

end A046315

/-! ## A046315.P4459434404324554998

`A001358(A289182(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A046315

/-- `A001358(A289182(n+1))` -/
def P4459434404324554998.Spec : Prop :=
  ∀ n, P4459434404324554998.a n = A046315 (n + 1)

theorem P4459434404324554998.correct : P4459434404324554998.Spec := by
  intro n
  simp only [A046315, Nat.add_sub_cancel]

end A046315

/-! ## A046315.P3368466623495639308

`record[A000265(A001358(n+3))]`
-/

namespace A046315.P3368466623495639308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001358 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046315.P3368466623495639308

namespace A046315

/-- `record[A000265(A001358(n+3))]` -/
def P3368466623495639308.Spec : Prop :=
  ∀ n, P3368466623495639308.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P3644631159479705191

`A100484(n+1)-A131634(n+1)`
-/

namespace A046315.P3644631159479705191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A131634 (n + 1)

end

end A046315.P3644631159479705191

namespace A046315

/-- `A100484(n+1)-A131634(n+1)` -/
def P3644631159479705191.Spec : Prop :=
  ∀ n, P3644631159479705191.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P15393058479404793915

`A282844(n+1)-A100484(n+1)`
-/

namespace A046315.P15393058479404793915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - A100484 (n + 1)

end

end A046315.P15393058479404793915

namespace A046315

/-- `A282844(n+1)-A100484(n+1)` -/
def P15393058479404793915.Spec : Prop :=
  ∀ n, P15393058479404793915.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P10180884761510627521

`A282844(n+1)-2*A000040(n+1)`
-/

namespace A046315.P10180884761510627521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - 2 * A000040 (n + 1)

end

end A046315.P10180884761510627521

namespace A046315

/-- `A282844(n+1)-2*A000040(n+1)` -/
def P10180884761510627521.Spec : Prop :=
  ∀ n, P10180884761510627521.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P17667980827799507735

`A000040(n+1)+A000040(n+1)-A131634(n+1)`
-/

namespace A046315.P17667980827799507735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 1) - A131634 (n + 1))

end

end A046315.P17667980827799507735

namespace A046315

/-- `A000040(n+1)+A000040(n+1)-A131634(n+1)` -/
def P17667980827799507735.Spec : Prop :=
  ∀ n, P17667980827799507735.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P15970408926993361721

`A031215(n+1)-(A131634(n+1)+A066066(n+1))`
-/

namespace A046315.P15970408926993361721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - (A131634 (n + 1) + A066066 (n + 1))

end

end A046315.P15970408926993361721

namespace A046315

/-- `A031215(n+1)-(A131634(n+1)+A066066(n+1))` -/
def P15970408926993361721.Spec : Prop :=
  ∀ n, P15970408926993361721.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P7518280036737409613

`A001358(n+1)+A175511(n+1)-A131634(n+1)`
-/

namespace A046315.P7518280036737409613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A175511 (n + 1) - A131634 (n + 1))

end

end A046315.P7518280036737409613

namespace A046315

/-- `A001358(n+1)+A175511(n+1)-A131634(n+1)` -/
def P7518280036737409613.Spec : Prop :=
  ∀ n, P7518280036737409613.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P10807997024911316776

`A282844(n+1)-(A175511(n+1)+A001358(n+1))`
-/

namespace A046315.P10807997024911316776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - (A175511 (n + 1) + A001358 (n + 1))

end

end A046315.P10807997024911316776

namespace A046315

/-- `A282844(n+1)-(A175511(n+1)+A001358(n+1))` -/
def P10807997024911316776.Spec : Prop :=
  ∀ n, P10807997024911316776.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P13506635962191749560

`A001747(n+2)-A131634(n+1)`
-/

namespace A046315.P13506635962191749560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - A131634 (n + 1)

end

end A046315.P13506635962191749560

namespace A046315

/-- `A001747(n+2)-A131634(n+1)` -/
def P13506635962191749560.Spec : Prop :=
  ∀ n, P13506635962191749560.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P17337971529879335354

`A282844(n+1)-A001747(n+2)`
-/

namespace A046315.P17337971529879335354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - A001747 (n + 2)

end

end A046315.P17337971529879335354

namespace A046315

/-- `A282844(n+1)-A001747(n+2)` -/
def P17337971529879335354.Spec : Prop :=
  ∀ n, P17337971529879335354.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P6596066649959537225

`A086530(n+1)+A086530(n+2)-A131634(n+1)`
-/

namespace A046315.P6596066649959537225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086530 (n + 1) + (A086530 (n + 2) - A131634 (n + 1))

end

end A046315.P6596066649959537225

namespace A046315

/-- `A086530(n+1)+A086530(n+2)-A131634(n+1)` -/
def P6596066649959537225.Spec : Prop :=
  ∀ n, P6596066649959537225.a n = A046315 (n + 1)

end A046315

/-! ## A046315.P2749468406811320469

`eq[1, A353480(n+1)]+1`
-/

namespace A046315.P2749468406811320469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046315.P2749468406811320469

namespace A046315

/-- `eq[1, A353480(n+1)]+1` -/
def P2749468406811320469.Spec : Prop :=
  ∀ n, (P2749468406811320469.a n : ℤ) = A046315 (n + 1)

end A046315

/-! ## A046315.P4724222463399173756

`eq[2, A317531(n+1)]+1`
-/

namespace A046315.P4724222463399173756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046315.P4724222463399173756

namespace A046315

/-- `eq[2, A317531(n+1)]+1` -/
def P4724222463399173756.Spec : Prop :=
  ∀ n, (P4724222463399173756.a n : ℤ) = A046315 (n + 1)

end A046315

/-! ## A046315.P1912158291659961867

`eq[2, A001222(n^(n%2))]`
-/

namespace A046315.P1912158291659961867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046315.P1912158291659961867

namespace A046315

/-- `eq[2, A001222(n^(n%2))]` -/
def P1912158291659961867.Spec : Prop :=
  ∀ n, (P1912158291659961867.a n : ℤ) = A046315 (n + 1)

end A046315

/-! ## A046315.P16826801323302483129

`eq[2, A001222(n^and(1, n))]`
-/

namespace A046315.P16826801323302483129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046315.P16826801323302483129

namespace A046315

/-- `eq[2, A001222(n^and(1, n))]` -/
def P16826801323302483129.Spec : Prop :=
  ∀ n, (P16826801323302483129.a n : ℤ) = A046315 (n + 1)

end A046315

/-! ## A046315.P3016133513228557757

`4/2+eq[gcd(2, n), A001222(n+3)]+1`
-/

namespace A046315.P3016133513228557757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 2 + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ)

end

end A046315.P3016133513228557757

namespace A046315

/-- `4/2+eq[gcd(2, n), A001222(n+3)]+1` -/
def P3016133513228557757.Spec : Prop :=
  ∀ n, P3016133513228557757.a n = (A046315 (n + 1) : ℚ)

end A046315

/-!
# A046316: Numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

The programs for A046316, the canonical program `A046316.P8314194811840766040` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046316 has offset 1).

The definition of A046316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046316.P15534570902431066415

`2*eq[3, A001222(2*n+1)]+1`
-/

namespace A046316.P15534570902431066415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046316.P15534570902431066415

namespace A046316

/-- `2*eq[3, A001222(2*n+1)]+1` -/
def P15534570902431066415.Spec : Prop :=
  ∀ n, (P15534570902431066415.a n : ℤ) = A046316 (n + 1)

end A046316

/-! ## A046316.P3660266492125733447

`filter[A046340(n+1), A369058(#)]`
-/

namespace A046316.P3660266492125733447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A046316.P3660266492125733447

namespace A046316

/-- `filter[A046340(n+1), A369058(#)]` -/
def P3660266492125733447.Spec : Prop :=
  ∀ n, P3660266492125733447.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P6447761676169147075

`filter[A046340(n+1), A340369(#)]`
-/

namespace A046316.P6447761676169147075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A046316.P6447761676169147075

namespace A046316

/-- `filter[A046340(n+1), A340369(#)]` -/
def P6447761676169147075.Spec : Prop :=
  ∀ n, P6447761676169147075.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P5984296276702481546

`eq[A001222(n+2), A323237(n+2)]+2`
-/

namespace A046316.P5984296276702481546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A046316.P5984296276702481546

namespace A046316

/-- `eq[A001222(n+2), A323237(n+2)]+2` -/
def P5984296276702481546.Spec : Prop :=
  ∀ n, (P5984296276702481546.a n : ℤ) = A046316 (n + 1)

end A046316

/-! ## A046316.P8314194811840766040

`eq[1, A369058(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A046316

/-- `eq[1, A369058(n+1)]+1` -/
def P8314194811840766040.Spec : Prop :=
  ∀ n, (P8314194811840766040.a n : ℤ) = A046316 (n + 1)

theorem P8314194811840766040.correct : P8314194811840766040.Spec := by
  intro n
  simp only [A046316, Nat.add_sub_cancel]

end A046316

/-! ## A046316.P12590733222174054088

`eq[3, A001222(n^and(1, n))]`
-/

namespace A046316.P12590733222174054088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046316.P12590733222174054088

namespace A046316

/-- `eq[3, A001222(n^and(1, n))]` -/
def P12590733222174054088.Spec : Prop :=
  ∀ n, (P12590733222174054088.a n : ℤ) = A046316 (n + 1)

end A046316

/-! ## A046316.P7240614940508510144

`eq[-a(n-1), A001222(n+1)]+1` with `a(0)=3`
-/

namespace A046316.P7240614940508510144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046316.P7240614940508510144

namespace A046316

/-- `eq[-a(n-1), A001222(n+1)]+1` -/
def P7240614940508510144.Spec : Prop :=
  ∀ n, (P7240614940508510144.a n : ℤ) = A046316 (n + 1)

end A046316

/-! ## A046316.P12099290102883585269

`eq[3, A001222(gcd(n, xor(1, n+1))+1)]+1`
-/

namespace A046316.P12099290102883585269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (Nat.xor 1 (n + 1)) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046316.P12099290102883585269

namespace A046316

/-- `eq[3, A001222(gcd(n, xor(1, n+1))+1)]+1` -/
def P12099290102883585269.Spec : Prop :=
  ∀ n, (P12099290102883585269.a n : ℤ) = A046316 (n + 1)

end A046316

/-! ## A046316.P13181533856485261413

`filter[A014612(n+1), A323158(#)]`
-/

namespace A046316.P13181533856485261413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A046316.P13181533856485261413

namespace A046316

/-- `filter[A014612(n+1), A323158(#)]` -/
def P13181533856485261413.Spec : Prop :=
  ∀ n, P13181533856485261413.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P2313396668698395517

`filter[A014612(n+1), A324908(#)]`
-/

namespace A046316.P2313396668698395517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A046316.P2313396668698395517

namespace A046316

/-- `filter[A014612(n+1), A324908(#)]` -/
def P2313396668698395517.Spec : Prop :=
  ∀ n, P2313396668698395517.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P10171851056540074555

`filter[A014612(n+1), A353558(#)]`
-/

namespace A046316.P10171851056540074555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046316.P10171851056540074555

namespace A046316

/-- `filter[A014612(n+1), A353558(#)]` -/
def P10171851056540074555.Spec : Prop :=
  ∀ n, P10171851056540074555.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P1904693171226850766

`filter[A014612(n+1), A369058(#)]`
-/

namespace A046316.P1904693171226850766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A046316.P1904693171226850766

namespace A046316

/-- `filter[A014612(n+1), A369058(#)]` -/
def P1904693171226850766.Spec : Prop :=
  ∀ n, P1904693171226850766.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P11533307652260756773

`filter[A014612(n+1), A373141(#)]`
-/

namespace A046316.P11533307652260756773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A046316.P11533307652260756773

namespace A046316

/-- `filter[A014612(n+1), A373141(#)]` -/
def P11533307652260756773.Spec : Prop :=
  ∀ n, P11533307652260756773.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P14336976060399603499

`filter[A014612(n+1), A379952(#)]`
-/

namespace A046316.P14336976060399603499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A046316.P14336976060399603499

namespace A046316

/-- `filter[A014612(n+1), A379952(#)]` -/
def P14336976060399603499.Spec : Prop :=
  ∀ n, P14336976060399603499.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P15428865492975666404

`∩[A014612(n+1), A046340(n+1)]`
-/

namespace A046316.P15428865492975666404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046316.P15428865492975666404

namespace A046316

/-- `∩[A014612(n+1), A046340(n+1)]` -/
def P15428865492975666404.Spec : Prop :=
  ∀ n, (P15428865492975666404.a n : ℤ) = A046316 (n + 1)

end A046316

/-! ## A046316.P2094044935673095872

`∩[A014612(n+1), A067019(n+1)]`
-/

namespace A046316.P2094044935673095872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046316.P2094044935673095872

namespace A046316

/-- `∩[A014612(n+1), A067019(n+1)]` -/
def P2094044935673095872.Spec : Prop :=
  ∀ n, (P2094044935673095872.a n : ℤ) = A046316 (n + 1)

end A046316

/-! ## A046316.P13343152454919284301

`A014612(eq[1, A014612(n+1)%2]+1)`
-/

namespace A046316.P13343152454919284301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014612 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046316.P13343152454919284301

namespace A046316

/-- `A014612(eq[1, A014612(n+1)%2]+1)` -/
def P13343152454919284301.Spec : Prop :=
  ∀ n, P13343152454919284301.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P12762663125906256383

`A014612(eq[1, and(1, A014612(n+1))]+1)`
-/

namespace A046316.P12762663125906256383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014612 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046316.P12762663125906256383

namespace A046316

/-- `A014612(eq[1, and(1, A014612(n+1))]+1)` -/
def P12762663125906256383.Spec : Prop :=
  ∀ n, P12762663125906256383.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P18049272296764556173

`filter[A326111(n+1), A353558(#)]`
-/

namespace A046316.P18049272296764556173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046316.P18049272296764556173

namespace A046316

/-- `filter[A326111(n+1), A353558(#)]` -/
def P18049272296764556173.Spec : Prop :=
  ∀ n, P18049272296764556173.a n = A046316 (n + 1)

end A046316

/-! ## A046316.P13354436879649300880

`filter[A326111(n+1), A369058(#)]`
-/

namespace A046316.P13354436879649300880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A046316.P13354436879649300880

namespace A046316

/-- `filter[A326111(n+1), A369058(#)]` -/
def P13354436879649300880.Spec : Prop :=
  ∀ n, P13354436879649300880.a n = A046316 (n + 1)

end A046316

/-!
# A046317: Odd numbers divisible by exactly 4 primes (counted with multiplicity).

The programs for A046317, the canonical program `A046317.P10889539092483496834` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046317 has offset 1).

The definition of A046317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3033 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046317.P15623026403761773055

`2*eq[4, A001222(2*n+1)]+1`
-/

namespace A046317.P15623026403761773055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046317.P15623026403761773055

namespace A046317

/-- `2*eq[4, A001222(2*n+1)]+1` -/
def P15623026403761773055.Spec : Prop :=
  ∀ n, (P15623026403761773055.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P10889539092483496834

`filter[A014613(n+1), A353557(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A046317

/-- `filter[A014613(n+1), A353557(#)]` -/
def P10889539092483496834.Spec : Prop :=
  ∀ n, P10889539092483496834.a n = A046317 (n + 1)

theorem P10889539092483496834.correct : P10889539092483496834.Spec := by
  intro n
  simp only [A046317, Nat.add_sub_cancel]

end A046317

/-! ## A046317.P16322652426582814227

`filter[A014613(n+1), A359770(#)]`
-/

namespace A046317.P16322652426582814227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A046317.P16322652426582814227

namespace A046317

/-- `filter[A014613(n+1), A359770(#)]` -/
def P16322652426582814227.Spec : Prop :=
  ∀ n, P16322652426582814227.a n = A046317 (n + 1)

end A046317

/-! ## A046317.P3870961021163394063

`A014613(eq[1, A014613(n+1)%2]+1)`
-/

namespace A046317.P3870961021163394063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014613 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046317.P3870961021163394063

namespace A046317

/-- `A014613(eq[1, A014613(n+1)%2]+1)` -/
def P3870961021163394063.Spec : Prop :=
  ∀ n, P3870961021163394063.a n = A046317 (n + 1)

end A046317

/-! ## A046317.P11908081890880816645

`A014613(eq[1, gcd(2, A014613(n+1))]+1)`
-/

namespace A046317.P11908081890880816645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A014613 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046317.P11908081890880816645

namespace A046317

/-- `A014613(eq[1, gcd(2, A014613(n+1))]+1)` -/
def P11908081890880816645.Spec : Prop :=
  ∀ n, P11908081890880816645.a n = A046317 (n + 1)

end A046317

/-! ## A046317.P13304127307800346175

`A014613(eq[1, and(1, A014613(n+1))]+1)`
-/

namespace A046317.P13304127307800346175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014613 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046317.P13304127307800346175

namespace A046317

/-- `A014613(eq[1, and(1, A014613(n+1))]+1)` -/
def P13304127307800346175.Spec : Prop :=
  ∀ n, P13304127307800346175.a n = A046317 (n + 1)

end A046317

/-! ## A046317.P7117257869852141564

`filter[A333326(n+1), A101637(#)]`
-/

namespace A046317.P7117257869852141564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046317.P7117257869852141564

namespace A046317

/-- `filter[A333326(n+1), A101637(#)]` -/
def P7117257869852141564.Spec : Prop :=
  ∀ n, P7117257869852141564.a n = A046317 (n + 1)

end A046317

/-! ## A046317.P6869134161444454228

`∩[A014613(n+1), A333326(n+1)]`
-/

namespace A046317.P6869134161444454228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P6869134161444454228

namespace A046317

/-- `∩[A014613(n+1), A333326(n+1)]` -/
def P6869134161444454228.Spec : Prop :=
  ∀ n, (P6869134161444454228.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P6611359595776186294

`∩[A014613(n+1), A046337(n+1)]`
-/

namespace A046317.P6611359595776186294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P6611359595776186294

namespace A046317

/-- `∩[A014613(n+1), A046337(n+1)]` -/
def P6611359595776186294.Spec : Prop :=
  ∀ n, (P6611359595776186294.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P2747698732140074645

`∩[A046337(n+1), A323350(n+1)]`
-/

namespace A046317.P2747698732140074645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P2747698732140074645

namespace A046317

/-- `∩[A046337(n+1), A323350(n+1)]` -/
def P2747698732140074645.Spec : Prop :=
  ∀ n, (P2747698732140074645.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P7730317785608340112

`record[A046318(n+1)/A020639(A046318(n+1))]`
-/

namespace A046317.P7730317785608340112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046318 (n + 1) : ℚ) / (A020639 (A046318 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046317.P7730317785608340112

namespace A046317

/-- `record[A046318(n+1)/A020639(A046318(n+1))]` -/
def P7730317785608340112.Spec : Prop :=
  ∀ n, P7730317785608340112.a n = (A046317 (n + 1) : ℚ)

end A046317

/-! ## A046317.P6185075015945578987

`∩[A014613(n+1), A176847(n+1)]`
-/

namespace A046317.P6185075015945578987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P6185075015945578987

namespace A046317

/-- `∩[A014613(n+1), A176847(n+1)]` -/
def P6185075015945578987.Spec : Prop :=
  ∀ n, (P6185075015945578987.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P12537749863444393523

`∩[A014613(n+1), A226025(n+1)]`
-/

namespace A046317.P12537749863444393523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P12537749863444393523

namespace A046317

/-- `∩[A014613(n+1), A226025(n+1)]` -/
def P12537749863444393523.Spec : Prop :=
  ∀ n, (P12537749863444393523.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P13759179261729881358

`∩[A014076(n+1), A014613(n+1)]`
-/

namespace A046317.P13759179261729881358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P13759179261729881358

namespace A046317

/-- `∩[A014076(n+1), A014613(n+1)]` -/
def P13759179261729881358.Spec : Prop :=
  ∀ n, (P13759179261729881358.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P2946523267704990264

`∩[A014613(n+1), A071904(n+1)]`
-/

namespace A046317.P2946523267704990264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P2946523267704990264

namespace A046317

/-- `∩[A014613(n+1), A071904(n+1)]` -/
def P2946523267704990264.Spec : Prop :=
  ∀ n, (P2946523267704990264.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P6829416164875067713

`∩[A014613(n+1), A257521(n+1)]`
-/

namespace A046317.P6829416164875067713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P6829416164875067713

namespace A046317

/-- `∩[A014613(n+1), A257521(n+1)]` -/
def P6829416164875067713.Spec : Prop :=
  ∀ n, (P6829416164875067713.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P5362457264727621719

`∩[A014613(n+1), A255763(n+1)]`
-/

namespace A046317.P5362457264727621719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P5362457264727621719

namespace A046317

/-- `∩[A014613(n+1), A255763(n+1)]` -/
def P5362457264727621719.Spec : Prop :=
  ∀ n, (P5362457264727621719.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P15913318114079421969

`∩[A014613(n+1), A193071(n+1)]`
-/

namespace A046317.P15913318114079421969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P15913318114079421969

namespace A046317

/-- `∩[A014613(n+1), A193071(n+1)]` -/
def P15913318114079421969.Spec : Prop :=
  ∀ n, (P15913318114079421969.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P11054011217184491701

`∩[A014613(n+1), A359771(n+1)]`
-/

namespace A046317.P11054011217184491701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P11054011217184491701

namespace A046317

/-- `∩[A014613(n+1), A359771(n+1)]` -/
def P11054011217184491701.Spec : Prop :=
  ∀ n, (P11054011217184491701.a n : ℤ) = A046317 (n + 1)

end A046317

/-! ## A046317.P8331554442168405415

`∩[A014613(n+1), A004273(n)]`
-/

namespace A046317.P8331554442168405415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046317.P8331554442168405415

namespace A046317

/-- `∩[A014613(n+1), A004273(n)]` -/
def P8331554442168405415.Spec : Prop :=
  ∀ n, (P8331554442168405415.a n : ℤ) = A046317 (n + 1)

end A046317

/-!
# A046318: Odd numbers divisible by exactly 5 primes (counted with multiplicity).

The programs for A046318, the canonical program `A046318.P16238112957922994965` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046318 has offset 1).

The definition of A046318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046318.P16238112957922994965

`record[A000265(A014614(n+14))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A046318

/-- `record[A000265(A014614(n+14))]` -/
def P16238112957922994965.Spec : Prop :=
  ∀ n, P16238112957922994965.a n = A046318 (n + 1)

theorem P16238112957922994965.correct : P16238112957922994965.Spec := by
  intro n
  simp only [A046318, Nat.add_sub_cancel]

end A046318

/-! ## A046318.P17831963356144420702

`A014614(eq[1, A014614(n+1)%2]+1)`
-/

namespace A046318.P17831963356144420702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014614 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046318.P17831963356144420702

namespace A046318

/-- `A014614(eq[1, A014614(n+1)%2]+1)` -/
def P17831963356144420702.Spec : Prop :=
  ∀ n, P17831963356144420702.a n = A046318 (n + 1)

end A046318

/-! ## A046318.P10061812685288710598

`A014614(eq[1, and(1, A014614(n+1))]+1)`
-/

namespace A046318.P10061812685288710598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014614 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046318.P10061812685288710598

namespace A046318

/-- `A014614(eq[1, and(1, A014614(n+1))]+1)` -/
def P10061812685288710598.Spec : Prop :=
  ∀ n, P10061812685288710598.a n = A046318 (n + 1)

end A046318

/-! ## A046318.P2586301614721464621

`∩[A014614(n+1), A046340(n+1)]`
-/

namespace A046318.P2586301614721464621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046318.P2586301614721464621

namespace A046318

/-- `∩[A014614(n+1), A046340(n+1)]` -/
def P2586301614721464621.Spec : Prop :=
  ∀ n, (P2586301614721464621.a n : ℤ) = A046318 (n + 1)

end A046318

/-! ## A046318.P15558245111691925471

`∩[A014614(n+1), A274720(n+1)]`
-/

namespace A046318.P15558245111691925471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046318.P15558245111691925471

namespace A046318

/-- `∩[A014614(n+1), A274720(n+1)]` -/
def P15558245111691925471.Spec : Prop :=
  ∀ n, (P15558245111691925471.a n : ℤ) = A046318 (n + 1)

end A046318

/-! ## A046318.P3215741424900033353

`∩[A014614(n+1), A139392(n+1)]`
-/

namespace A046318.P3215741424900033353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046318.P3215741424900033353

namespace A046318

/-- `∩[A014614(n+1), A139392(n+1)]` -/
def P3215741424900033353.Spec : Prop :=
  ∀ n, (P3215741424900033353.a n : ℤ) = A046318 (n + 1)

end A046318

/-! ## A046318.P17929767447038863532

`∩[A014614(n+1), A333326(n+1)]`
-/

namespace A046318.P17929767447038863532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046318.P17929767447038863532

namespace A046318

/-- `∩[A014614(n+1), A333326(n+1)]` -/
def P17929767447038863532.Spec : Prop :=
  ∀ n, (P17929767447038863532.a n : ℤ) = A046318 (n + 1)

end A046318

/-! ## A046318.P5612211350431989124

`record[A046319(n+1)/A020639(A046319(n+1))]`
-/

namespace A046318.P5612211350431989124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046319 (n + 1) : ℚ) / (A020639 (A046319 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046318.P5612211350431989124

namespace A046318

/-- `record[A046319(n+1)/A020639(A046319(n+1))]` -/
def P5612211350431989124.Spec : Prop :=
  ∀ n, P5612211350431989124.a n = (A046318 (n + 1) : ℚ)

end A046318

/-! ## A046318.P11509507211486108768

`record[A006083(A046319(n+1))]`
-/

namespace A046318.P11509507211486108768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A046319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046318.P11509507211486108768

namespace A046318

/-- `record[A006083(A046319(n+1))]` -/
def P11509507211486108768.Spec : Prop :=
  ∀ n, P11509507211486108768.a n = A046318 (n + 1)

end A046318

/-!
# A046319: Odd numbers divisible by exactly 6 primes (counted with multiplicity).

The programs for A046319, there is no canonical definition to state claims against.
-/

/-! ## A046319.P17466308401980050530

`record[A046320(n+1)/A020639(A046320(n+1))]`
-/

namespace A046319.P17466308401980050530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A020639 (A046320 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046319.P17466308401980050530

/-! ## A046319.P17468235104233859121

`A046320(n+1)/A007425(A007529(n+1))`
-/

namespace A046319.P17468235104233859121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A007425 (A007529 (n + 1)).toNat : ℚ)

end

end A046319.P17468235104233859121

/-! ## A046319.P3098176600843142159

`A046320(n+1)/A007425(A240453(n+1))`
-/

namespace A046319.P3098176600843142159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A007425 (A240453 (n + 1)).toNat : ℚ)

end

end A046319.P3098176600843142159

/-! ## A046319.P14113815466296220217

`A046320(n+1)/A010693(A212848(n))`
-/

namespace A046319.P14113815466296220217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A010693 (A212848 n).toNat : ℚ)

end

end A046319.P14113815466296220217

/-! ## A046319.P9138675335016673078

`A046321(n+1)/A040073(A212848(n))`
-/

namespace A046319.P9138675335016673078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A040073 (A212848 n).toNat : ℚ)

end

end A046319.P9138675335016673078

/-! ## A046319.P14571649859257949371

`A046320(n+1)/A007425(A096218(n+1))`
-/

namespace A046319.P14571649859257949371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A007425 (A096218 (n + 1)).toNat : ℚ)

end

end A046319.P14571649859257949371

/-! ## A046319.P11264364203793709851

`A046320(n+1)/A158478(A018800(n+3))`
-/

namespace A046319.P11264364203793709851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A158478 (A018800 (n + 3)).toNat : ℚ)

end

end A046319.P11264364203793709851

/-! ## A046319.P12890602713307001579

`A046320(n+1)/A048883(A130321(n))`
-/

namespace A046319.P12890602713307001579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A048883 (A130321 n).toNat : ℚ)

end

end A046319.P12890602713307001579

/-! ## A046319.P8098966859672219351

`A046320(n+1)/A001222(A014612(A046310(n+1)))`
-/

namespace A046319.P8098966859672219351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A001222 (A014612 (A046310 (n + 1)).toNat).toNat : ℚ)

end

end A046319.P8098966859672219351

/-! ## A046319.P644065705232580018

`A046320(n+1)/A176873(n²)`
-/

namespace A046319.P644065705232580018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046320 (n + 1) : ℚ) / (A176873 (n ^ 2) : ℚ)

end

end A046319.P644065705232580018

/-! ## A046319.P13621094412844003637

`A046321(n+1)/A176873(n²)²`
-/

namespace A046319.P13621094412844003637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A176873 (n ^ 2) ^ 2 : ℚ)

end

end A046319.P13621094412844003637

/-!
# A046320: Odd numbers divisible by exactly 7 primes (counted with multiplicity).

The programs for A046320, there is no canonical definition to state claims against.
-/

/-! ## A046320.P17939425257413486108

`A046321(n+1)/A007425(A176116(n+1))`
-/

namespace A046320.P17939425257413486108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A007425 (A176116 (n + 1)).toNat : ℚ)

end

end A046320.P17939425257413486108

/-! ## A046320.P747127910565021964

`A046321(n+1)/A158478(A325824(n+1))`
-/

namespace A046320.P747127910565021964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A158478 (A325824 (n + 1)).toNat : ℚ)

end

end A046320.P747127910565021964

/-! ## A046320.P12756469548762547666

`A046321(n+1)/A158478(A176116(n+2))`
-/

namespace A046320.P12756469548762547666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A158478 (A176116 (n + 2)).toNat : ℚ)

end

end A046320.P12756469548762547666

/-! ## A046320.P10369625650848479299

`A046322(n+1)/A158478(A325824(n+1))²`
-/

namespace A046320.P10369625650848479299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A158478 (A325824 (n + 1)).toNat ^ 2 : ℚ)

end

end A046320.P10369625650848479299

/-! ## A046320.P862235324517356490

`A046322(n+1)/A040073(A031928(n+1))`
-/

namespace A046320.P862235324517356490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A040073 (A031928 (n + 1)).toNat : ℚ)

end

end A046320.P862235324517356490

/-! ## A046320.P15545287813537603680

`A046321(n+1)/A226602(A031928(n+1))`
-/

namespace A046320.P15545287813537603680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A226602 (A031928 (n + 1)).toNat : ℚ)

end

end A046320.P15545287813537603680

/-! ## A046320.P9701390171050645399

`A046321(n+1)/A007425(A006512(n+1))`
-/

namespace A046320.P9701390171050645399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A007425 (A006512 (n + 1)).toNat : ℚ)

end

end A046320.P9701390171050645399

/-! ## A046320.P2105874132517589127

`A046322(n+1)/A040073(A157924(n+1))`
-/

namespace A046320.P2105874132517589127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A040073 (A157924 (n + 1)).toNat : ℚ)

end

end A046320.P2105874132517589127

/-! ## A046320.P4552121611212242525

`A046321(n+1)/A226602(A018800(n+1))`
-/

namespace A046320.P4552121611212242525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A226602 (A018800 (n + 1)).toNat : ℚ)

end

end A046320.P4552121611212242525

/-! ## A046320.P7375116879002316349

`A046321(n+1)/A176873(A008794(n))`
-/

namespace A046320.P7375116879002316349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A176873 (A008794 n).toNat : ℚ)

end

end A046320.P7375116879002316349

/-! ## A046320.P1585846706972739116

`A046321(n+1)/A007425(A006450(n+1))`
-/

namespace A046320.P1585846706972739116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A007425 (A006450 (n + 1)).toNat : ℚ)

end

end A046320.P1585846706972739116

/-! ## A046320.P15214209160655561710

`A046322(n+1)/A158478(A006450(n+1))²`
-/

namespace A046320.P15214209160655561710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A158478 (A006450 (n + 1)).toNat ^ 2 : ℚ)

end

end A046320.P15214209160655561710

/-! ## A046320.P5118592012741460386

`A046321(n+1)/A010702(A110660(n))`
-/

namespace A046320.P5118592012741460386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A010702 (A110660 n).toNat : ℚ)

end

end A046320.P5118592012741460386

/-! ## A046320.P17312984957792549655

`A046321(n+1)/A165824(A005384(n+1))`
-/

namespace A046320.P17312984957792549655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A165824 (A005384 (n + 1)).toNat : ℚ)

end

end A046320.P17312984957792549655

/-! ## A046320.P5781828228720732617

`A046321(n+1)/A133700(A181848(n+1))`
-/

namespace A046320.P5781828228720732617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A133700 (A181848 (n + 1)).toNat : ℚ)

end

end A046320.P5781828228720732617

/-! ## A046320.P4407049765194083753

`A046321(n+1)/A000005(A282176(n+1))`
-/

namespace A046320.P4407049765194083753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A000005 (A282176 (n + 1)).toNat : ℚ)

end

end A046320.P4407049765194083753

/-! ## A046320.P1275807404696298689

`A046321(n+1)/A176873(n²)`
-/

namespace A046320.P1275807404696298689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046321 (n + 1) : ℚ) / (A176873 (n ^ 2) : ℚ)

end

end A046320.P1275807404696298689

/-!
# A046321: Odd numbers divisible by exactly 8 primes (counted with multiplicity).

The programs for A046321, there is no canonical definition to state claims against.
-/

/-! ## A046321.P18186814093781633479

`A046323(n+1)/A040073(A176116(n+1))`
-/

namespace A046321.P18186814093781633479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046323 (n + 1) : ℚ) / (A040073 (A176116 (n + 1)).toNat : ℚ)

end

end A046321.P18186814093781633479

/-! ## A046321.P16597566731447308110

`A046322(n+1)/A001222(A046329(n+1))`
-/

namespace A046321.P16597566731447308110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A001222 (A046329 (n + 1)).toNat : ℚ)

end

end A046321.P16597566731447308110

/-! ## A046321.P5129382203284544064

`A046323(n+1)/A001222(A046329(n+1))²`
-/

namespace A046321.P5129382203284544064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046323 (n + 1) : ℚ) / (A001222 (A046329 (n + 1)).toNat ^ 2 : ℚ)

end

end A046321.P5129382203284544064

/-! ## A046321.P7293570278745307090

`A046322(n+1)/A014963(A165824(2*(n+1)))`
-/

namespace A046321.P7293570278745307090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A014963 (A165824 (2 * (n + 1))).toNat : ℚ)

end

end A046321.P7293570278745307090

/-! ## A046321.P11250576558831041006

`A046322(n+1)/A030727(A030735(n+1))`
-/

namespace A046321.P11250576558831041006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A030727 (A030735 (n + 1)).toNat : ℚ)

end

end A046321.P11250576558831041006

/-! ## A046321.P9443283691278246832

`A007425(A176116(n+1))*A046320(n+1)`
-/

namespace A046321.P9443283691278246832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A176116 (n + 1)).toNat * A046320 (n + 1)

end

end A046321.P9443283691278246832

/-! ## A046321.P6692940267282363290

`A046320(n+1)*A158478(A325824(n+1))`
-/

namespace A046321.P6692940267282363290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A158478 (A325824 (n + 1)).toNat

end

end A046321.P6692940267282363290

/-! ## A046321.P4519354919616680242

`A046320(n+1)*A158478(A176116(n+2))`
-/

namespace A046321.P4519354919616680242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A158478 (A176116 (n + 2)).toNat

end

end A046321.P4519354919616680242

/-! ## A046321.P8020795402771050170

`A046322(n+1)/A158478(A325824(n+1))`
-/

namespace A046321.P8020795402771050170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A158478 (A325824 (n + 1)).toNat : ℚ)

end

end A046321.P8020795402771050170

/-! ## A046321.P7622518548475444693

`A046320(n+1)*A165824(p?[A176853(n+1)])`
-/

namespace A046321.P7622518548475444693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A165824 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046321.P7622518548475444693

/-! ## A046321.P11233523520078476196

`A046320(n+1)*A226602(A031928(n+1))`
-/

namespace A046321.P11233523520078476196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A226602 (A031928 (n + 1)).toNat

end

end A046321.P11233523520078476196

/-! ## A046321.P435399682032175818

`A046320(n+1)*A335465(A104660(n+1))`
-/

namespace A046321.P435399682032175818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A335465 (A104660 (n + 1)).toNat

end

end A046321.P435399682032175818

/-! ## A046321.P9420759741709237867

`A007425(A006512(n+1))*A046320(n+1)`
-/

namespace A046321.P9420759741709237867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A006512 (n + 1)).toNat * A046320 (n + 1)

end

end A046321.P9420759741709237867

/-! ## A046321.P12792252873347351006

`A046320(n+1)*A282004(A034444(A158066(n+1)))`
-/

namespace A046321.P12792252873347351006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A282004 (A034444 (A158066 (n + 1)).toNat).toNat

end

end A046321.P12792252873347351006

/-! ## A046321.P16554468686102650306

`A046320(n+1)*A176873(A008794(n))`
-/

namespace A046321.P16554468686102650306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A176873 (A008794 n).toNat

end

end A046321.P16554468686102650306

/-! ## A046321.P11453659111398319584

`A046320(n+1)*A165824(A006450(n+1))`
-/

namespace A046321.P11453659111398319584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A165824 (A006450 (n + 1)).toNat

end

end A046321.P11453659111398319584

/-! ## A046321.P3640566040645960520

`A046322(n+1)/A158478(A006450(n+1))`
-/

namespace A046321.P3640566040645960520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046322 (n + 1) : ℚ) / (A158478 (A006450 (n + 1)).toNat : ℚ)

end

end A046321.P3640566040645960520

/-! ## A046321.P2713213559927807975

`A007425(p?[A017053(n)])*A046320(n+1)`
-/

namespace A046321.P2713213559927807975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A046320 (n + 1)

end

end A046321.P2713213559927807975

/-! ## A046321.P17679449390769597120

`A046320(n+1)*A100587(A098170(n+1))`
-/

namespace A046321.P17679449390769597120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A100587 (A098170 (n + 1)).toNat

end

end A046321.P17679449390769597120

/-! ## A046321.P13304836161135674206

`A007425(A007529(n+1))*A046320(n+1)`
-/

namespace A046321.P13304836161135674206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A007529 (n + 1)).toNat * A046320 (n + 1)

end

end A046321.P13304836161135674206

/-!
# A046322: Odd numbers divisible by exactly 9 primes (counted with multiplicity).

The programs for A046322, there is no canonical definition to state claims against.
-/

/-! ## A046322.P1642965210774279429

`A046321(n+1)*A158478(A003961(n+2))`
-/

namespace A046322.P1642965210774279429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046321 (n + 1) * A158478 (A003961 (n + 2)).toNat

end

end A046322.P1642965210774279429

/-! ## A046322.P17120964760606822618

`A040073(A176116(n+1))*A046321(n+1)/3`
-/

namespace A046322.P17120964760606822618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040073 (A176116 (n + 1)).toNat * A046321 (n + 1) : ℚ) / 3

end

end A046322.P17120964760606822618

/-! ## A046322.P7160346661360629381

`A046321(n+1)*A226602(A005384(n+1))`
-/

namespace A046322.P7160346661360629381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046321 (n + 1) * A226602 (A005384 (n + 1)).toNat

end

end A046322.P7160346661360629381

/-! ## A046322.P9650784155284843270

`A046323(n+1)/A001222(A046329(n+1))`
-/

namespace A046322.P9650784155284843270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046323 (n + 1) : ℚ) / (A001222 (A046329 (n + 1)).toNat : ℚ)

end

end A046322.P9650784155284843270

/-! ## A046322.P14929252661708656894

`(A141310(A131270(n))+1)*A046321(n+1)`
-/

namespace A046322.P14929252661708656894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141310 (A131270 n).toNat + 1) * A046321 (n + 1)

end

end A046322.P14929252661708656894

/-! ## A046322.P16297747481776722144

`A007425(A176116(n+1))*A046321(n+1)`
-/

namespace A046322.P16297747481776722144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A176116 (n + 1)).toNat * A046321 (n + 1)

end

end A046322.P16297747481776722144

/-! ## A046322.P1643126392462480249

`A007425(A176116(n+1))²*A046320(n+1)`
-/

namespace A046322.P1643126392462480249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A176116 (n + 1)).toNat ^ 2 * A046320 (n + 1)

end

end A046322.P1643126392462480249

/-! ## A046322.P14782080573768676750

`A046321(n+1)*A158478(A325824(n+1))`
-/

namespace A046322.P14782080573768676750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046321 (n + 1) * A158478 (A325824 (n + 1)).toNat

end

end A046322.P14782080573768676750

/-! ## A046322.P6516232355779158108

`A046321(n+1)*A158478(A176116(n+2))`
-/

namespace A046322.P6516232355779158108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046321 (n + 1) * A158478 (A176116 (n + 2)).toNat

end

end A046322.P6516232355779158108

/-! ## A046322.P7361265154775135905

`A158478(A325824(n+1))²*A046320(n+1)`
-/

namespace A046322.P7361265154775135905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A325824 (n + 1)).toNat ^ 2 * A046320 (n + 1)

end

end A046322.P7361265154775135905

/-! ## A046322.P804587253006357060

`A046321(n+1)*A226602(A031928(n+1))`
-/

namespace A046322.P804587253006357060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046321 (n + 1) * A226602 (A031928 (n + 1)).toNat

end

end A046322.P804587253006357060

/-! ## A046322.P4493599940929091858

`A226602(A031928(n+1))²*A046320(n+1)`
-/

namespace A046322.P4493599940929091858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A031928 (n + 1)).toNat ^ 2 * A046320 (n + 1)

end

end A046322.P4493599940929091858

/-! ## A046322.P10292312480501497119

`A007425(A006512(n+1))*A046321(n+1)`
-/

namespace A046322.P10292312480501497119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A006512 (n + 1)).toNat * A046321 (n + 1)

end

end A046322.P10292312480501497119

/-! ## A046322.P11066664597954325527

`A007425(A006512(n+1))²*A046320(n+1)`
-/

namespace A046322.P11066664597954325527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A006512 (n + 1)).toNat ^ 2 * A046320 (n + 1)

end

end A046322.P11066664597954325527

/-! ## A046322.P8271986700258588018

`A007425(A000040(A016969(n)))*A046321(n+1)`
-/

namespace A046322.P8271986700258588018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A000040 (A016969 n).toNat).toNat * A046321 (n + 1)

end

end A046322.P8271986700258588018

/-! ## A046322.P2817516315873886672

`A040073(A157924(n+1))*A046320(n+1)`
-/

namespace A046322.P2817516315873886672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (A157924 (n + 1)).toNat * A046320 (n + 1)

end

end A046322.P2817516315873886672

/-! ## A046322.P4689991666276809668

`A046321(n+1)*A226602(A018800(n+1))`
-/

namespace A046322.P4689991666276809668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046321 (n + 1) * A226602 (A018800 (n + 1)).toNat

end

end A046322.P4689991666276809668

/-! ## A046322.P12600937790027230919

`A176873(A008794(n))²*A046320(n+1)`
-/

namespace A046322.P12600937790027230919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 (A008794 n).toNat ^ 2 * A046320 (n + 1)

end

end A046322.P12600937790027230919

/-! ## A046322.P8677245600475367064

`A007425(A006450(n+1))*A046321(n+1)`
-/

namespace A046322.P8677245600475367064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A006450 (n + 1)).toNat * A046321 (n + 1)

end

end A046322.P8677245600475367064

/-! ## A046322.P5742072676546871359

`A165824(A006450(n+1))²*A046320(n+1)`
-/

namespace A046322.P5742072676546871359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A006450 (n + 1)).toNat ^ 2 * A046320 (n + 1)

end

end A046322.P5742072676546871359

/-!
# A046323: Odd numbers divisible by exactly 10 primes (counted with multiplicity).

The programs for A046323, there is no canonical definition to state claims against.
-/

/-! ## A046323.P12335881536122513726

`A040073(A176116(n+1))*A046321(n+1)`
-/

namespace A046323.P12335881536122513726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (A176116 (n + 1)).toNat * A046321 (n + 1)

end

end A046323.P12335881536122513726

/-! ## A046323.P10421650094796795363

`A226602(A005384(n+1))²*A046321(n+1)`
-/

namespace A046323.P10421650094796795363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A005384 (n + 1)).toNat ^ 2 * A046321 (n + 1)

end

end A046323.P10421650094796795363

/-! ## A046323.P11182205996148700414

`A001222(A046329(n+1))*A046322(n+1)`
-/

namespace A046323.P11182205996148700414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046329 (n + 1)).toNat * A046322 (n + 1)

end

end A046323.P11182205996148700414

/-! ## A046323.P3097256430215828398

`(A141310(A131270(n))+1)²*A046321(n+1)`
-/

namespace A046323.P3097256430215828398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141310 (A131270 n).toNat + 1) ^ 2 * A046321 (n + 1)

end

end A046323.P3097256430215828398

/-! ## A046323.P5480215726820849529

`A014963(A165824(2*(n+1)))*A046322(n+1)`
-/

namespace A046323.P5480215726820849529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A165824 (2 * (n + 1))).toNat * A046322 (n + 1)

end

end A046323.P5480215726820849529

/-! ## A046323.P184482253423562639

`A030727(A030735(n+1))*A046322(n+1)`
-/

namespace A046323.P184482253423562639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030727 (A030735 (n + 1)).toNat * A046322 (n + 1)

end

end A046323.P184482253423562639

/-! ## A046323.P1757040916443318657

`3*A007425(A176116(n+1))²*A046320(n+1)`
-/

namespace A046323.P1757040916443318657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A007425 (A176116 (n + 1)).toNat ^ 2 * A046320 (n + 1))

end

end A046323.P1757040916443318657

/-! ## A046323.P13784366365480884631

`A046322(n+1)*A158478(A325824(n+1))`
-/

namespace A046323.P13784366365480884631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046322 (n + 1) * A158478 (A325824 (n + 1)).toNat

end

end A046323.P13784366365480884631

/-! ## A046323.P6492519804233311715

`A158478(A325824(n+1))²*A046321(n+1)`
-/

namespace A046323.P6492519804233311715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A325824 (n + 1)).toNat ^ 2 * A046321 (n + 1)

end

end A046323.P6492519804233311715

/-! ## A046323.P7201502743240515655

`9*A046320(n+1)*A158478(A325824(n+1))`
-/

namespace A046323.P7201502743240515655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A046320 (n + 1) * A158478 (A325824 (n + 1)).toNat)

end

end A046323.P7201502743240515655

/-! ## A046323.P14753918568815914887

`9*A046320(n+1)*A165824(p?[A176853(n+1)])`
-/

namespace A046323.P14753918568815914887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A046320 (n + 1) * A165824 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A046323.P14753918568815914887

/-! ## A046323.P5815565709187106725

`A046320(n+1)*A325824(A001511(A325824(n+1)))`
-/

namespace A046323.P5815565709187106725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046320 (n + 1) * A325824 (A001511 (A325824 (n + 1)).toNat).toNat

end

end A046323.P5815565709187106725

/-! ## A046323.P5368549704689545836

`A226602(A031928(n+1))²*A046321(n+1)`
-/

namespace A046323.P5368549704689545836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A031928 (n + 1)).toNat ^ 2 * A046321 (n + 1)

end

end A046323.P5368549704689545836

/-! ## A046323.P7736008626794934573

`A007425(A006512(n+1))²*A046321(n+1)`
-/

namespace A046323.P7736008626794934573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A006512 (n + 1)).toNat ^ 2 * A046321 (n + 1)

end

end A046323.P7736008626794934573

/-! ## A046323.P53173209731335285

`A040073(A157924(n+1))*A046321(n+1)`
-/

namespace A046323.P53173209731335285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (A157924 (n + 1)).toNat * A046321 (n + 1)

end

end A046323.P53173209731335285

/-! ## A046323.P5759802696424270085

`3*A040073(A157924(n+1))*A046320(n+1)`
-/

namespace A046323.P5759802696424270085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A040073 (A157924 (n + 1)).toNat * A046320 (n + 1))

end

end A046323.P5759802696424270085

/-! ## A046323.P18266905999973705180

`A226602(A018800(n+1))²*A046321(n+1)`
-/

namespace A046323.P18266905999973705180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A018800 (n + 1)).toNat ^ 2 * A046321 (n + 1)

end

end A046323.P18266905999973705180

/-! ## A046323.P14337176728338577590

`A176873(A008794(n))²*A046321(n+1)`
-/

namespace A046323.P14337176728338577590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 (A008794 n).toNat ^ 2 * A046321 (n + 1)

end

end A046323.P14337176728338577590

/-! ## A046323.P1745504613236947655

`A046322(n+1)*A158478(A006450(n+1))`
-/

namespace A046323.P1745504613236947655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046322 (n + 1) * A158478 (A006450 (n + 1)).toNat

end

end A046323.P1745504613236947655

/-! ## A046323.P17004178373383292176

`A007425(A006450(n+1))²*A046321(n+1)`
-/

namespace A046323.P17004178373383292176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A006450 (n + 1)).toNat ^ 2 * A046321 (n + 1)

end

end A046323.P17004178373383292176

/-!
# A046324: Product of 6 successive primes.

The programs for A046324, the canonical program `A046324.P5497481836361738201` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046324 has offset 1).

The definition of A046324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046324.P5497481836361738201

`A000040(n+1)*A046303(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A046324

/-- `A000040(n+1)*A046303(n+2)` -/
def P5497481836361738201.Spec : Prop :=
  ∀ n, P5497481836361738201.a n = A046324 (n + 1)

theorem P5497481836361738201.correct : P5497481836361738201.Spec := by
  intro n
  simp only [A046324, Nat.add_sub_cancel]

end A046324

/-! ## A046324.P3372767820695052505

`A008578(n+2)*A046303(n+2)`
-/

namespace A046324.P3372767820695052505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A046303 (n + 2)

end

end A046324.P3372767820695052505

namespace A046324

/-- `A008578(n+2)*A046303(n+2)` -/
def P3372767820695052505.Spec : Prop :=
  ∀ n, P3372767820695052505.a n = A046324 (n + 1)

end A046324

/-! ## A046324.P4900410929555907038

`lcm(A046303(n+1), A046303(n+2))`
-/

namespace A046324.P4900410929555907038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046303 (n + 1)) (A046303 (n + 2))

end

end A046324.P4900410929555907038

namespace A046324

/-- `lcm(A046303(n+1), A046303(n+2))` -/
def P4900410929555907038.Spec : Prop :=
  ∀ n, (P4900410929555907038.a n : ℤ) = A046324 (n + 1)

end A046324

/-! ## A046324.P17935463878326320358

`A046301(n+1)/A006094(n+2)*A046303(n+2)`
-/

namespace A046324.P17935463878326320358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ) * (A046303 (n + 2) : ℚ)

end

end A046324.P17935463878326320358

namespace A046324

/-- `A046301(n+1)/A006094(n+2)*A046303(n+2)` -/
def P17935463878326320358.Spec : Prop :=
  ∀ n, P17935463878326320358.a n = (A046324 (n + 1) : ℚ)

end A046324

/-! ## A046324.P15837418611662421731

`A046302(n+1)/A046301(n+2)*A046303(n+2)`
-/

namespace A046324.P15837418611662421731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A046301 (n + 2) : ℚ) * (A046303 (n + 2) : ℚ)

end

end A046324.P15837418611662421731

namespace A046324

/-- `A046302(n+1)/A046301(n+2)*A046303(n+2)` -/
def P15837418611662421731.Spec : Prop :=
  ∀ n, P15837418611662421731.a n = (A046324 (n + 1) : ℚ)

end A046324

/-! ## A046324.P9538412423636865207

`A046303(n+1)/A046302(n+2)*A046303(n+2)`
-/

namespace A046324.P9538412423636865207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046303 (n + 1) : ℚ) / (A046302 (n + 2) : ℚ) * (A046303 (n + 2) : ℚ)

end

end A046324.P9538412423636865207

namespace A046324

/-- `A046303(n+1)/A046302(n+2)*A046303(n+2)` -/
def P9538412423636865207.Spec : Prop :=
  ∀ n, P9538412423636865207.a n = (A046324 (n + 1) : ℚ)

end A046324

/-! ## A046324.P15971598516432100480

`A046326(n+1)/A046325(n+2)*A046303(n+2)`
-/

namespace A046324.P15971598516432100480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046326 (n + 1) : ℚ) / (A046325 (n + 2) : ℚ) * (A046303 (n + 2) : ℚ)

end

end A046324.P15971598516432100480

namespace A046324

/-- `A046326(n+1)/A046325(n+2)*A046303(n+2)` -/
def P15971598516432100480.Spec : Prop :=
  ∀ n, P15971598516432100480.a n = (A046324 (n + 1) : ℚ)

end A046324

/-! ## A046324.P18084130743382964818

`A006094(n+1)*A046302(n+3)`
-/

namespace A046324.P18084130743382964818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A046302 (n + 3)

end

end A046324.P18084130743382964818

namespace A046324

/-- `A006094(n+1)*A046302(n+3)` -/
def P18084130743382964818.Spec : Prop :=
  ∀ n, P18084130743382964818.a n = A046324 (n + 1)

end A046324

/-! ## A046324.P9563655029952377203

`A046301(n+1)*A046301(n+4)`
-/

namespace A046324.P9563655029952377203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A046301 (n + 4)

end

end A046324.P9563655029952377203

namespace A046324

/-- `A046301(n+1)*A046301(n+4)` -/
def P9563655029952377203.Spec : Prop :=
  ∀ n, P9563655029952377203.a n = A046324 (n + 1)

end A046324

/-! ## A046324.P5613394648413385005

`(A002110(n)-A060882(n))*A046303(n+2)`
-/

namespace A046324.P5613394648413385005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002110 n - A060882 n) * A046303 (n + 2)

end

end A046324.P5613394648413385005

namespace A046324

/-- `(A002110(n)-A060882(n))*A046303(n+2)` -/
def P5613394648413385005.Spec : Prop :=
  ∀ n, P5613394648413385005.a n = A046324 (n + 1)

end A046324

/-!
# A046325: Product of 7 successive primes.

The programs for A046325, the canonical program `A046325.P13404196471714545955` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046325 has offset 1).

The definition of A046325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046325.P13404196471714545955

`A000040(n+1)*A046324(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A046325

/-- `A000040(n+1)*A046324(n+2)` -/
def P13404196471714545955.Spec : Prop :=
  ∀ n, P13404196471714545955.a n = A046325 (n + 1)

theorem P13404196471714545955.correct : P13404196471714545955.Spec := by
  intro n
  simp only [A046325, Nat.add_sub_cancel]

end A046325

/-! ## A046325.P1906897491555400297

`A046301(n+1)/A006094(n+2)*A046324(n+2)`
-/

namespace A046325.P1906897491555400297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ) * (A046324 (n + 2) : ℚ)

end

end A046325.P1906897491555400297

namespace A046325

/-- `A046301(n+1)/A006094(n+2)*A046324(n+2)` -/
def P1906897491555400297.Spec : Prop :=
  ∀ n, P1906897491555400297.a n = (A046325 (n + 1) : ℚ)

end A046325

/-! ## A046325.P5059211204846323918

`A046302(n+1)/A046301(n+2)*A046324(n+2)`
-/

namespace A046325.P5059211204846323918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A046301 (n + 2) : ℚ) * (A046324 (n + 2) : ℚ)

end

end A046325.P5059211204846323918

namespace A046325

/-- `A046302(n+1)/A046301(n+2)*A046324(n+2)` -/
def P5059211204846323918.Spec : Prop :=
  ∀ n, P5059211204846323918.a n = (A046325 (n + 1) : ℚ)

end A046325

/-! ## A046325.P3802199911185813543

`A046303(n+1)/A046302(n+2)*A046324(n+2)`
-/

namespace A046325.P3802199911185813543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046303 (n + 1) : ℚ) / (A046302 (n + 2) : ℚ) * (A046324 (n + 2) : ℚ)

end

end A046325.P3802199911185813543

namespace A046325

/-- `A046303(n+1)/A046302(n+2)*A046324(n+2)` -/
def P3802199911185813543.Spec : Prop :=
  ∀ n, P3802199911185813543.a n = (A046325 (n + 1) : ℚ)

end A046325

/-! ## A046325.P11227809780813557100

`A046324(n+1)/A046303(n+2)*A046324(n+2)`
-/

namespace A046325.P11227809780813557100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046324 (n + 1) : ℚ) / (A046303 (n + 2) : ℚ) * (A046324 (n + 2) : ℚ)

end

end A046325.P11227809780813557100

namespace A046325

/-- `A046324(n+1)/A046303(n+2)*A046324(n+2)` -/
def P11227809780813557100.Spec : Prop :=
  ∀ n, P11227809780813557100.a n = (A046325 (n + 1) : ℚ)

end A046325

/-! ## A046325.P13885000413981371412

`A006094(n+1)*A046303(n+3)`
-/

namespace A046325.P13885000413981371412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A046303 (n + 3)

end

end A046325.P13885000413981371412

namespace A046325

/-- `A006094(n+1)*A046303(n+3)` -/
def P13885000413981371412.Spec : Prop :=
  ∀ n, P13885000413981371412.a n = A046325 (n + 1)

end A046325

/-! ## A046325.P14645015445494056428

`A046301(n+1)*A046302(n+4)`
-/

namespace A046325.P14645015445494056428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A046302 (n + 4)

end

end A046325.P14645015445494056428

namespace A046325

/-- `A046301(n+1)*A046302(n+4)` -/
def P14645015445494056428.Spec : Prop :=
  ∀ n, P14645015445494056428.a n = A046325 (n + 1)

end A046325

/-! ## A046325.P288166524826387473

`A002110(n+1)/A002110(n)*A046324(n+2)`
-/

namespace A046325.P288166524826387473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A002110 n : ℚ) * (A046324 (n + 2) : ℚ)

end

end A046325.P288166524826387473

namespace A046325

/-- `A002110(n+1)/A002110(n)*A046324(n+2)` -/
def P288166524826387473.Spec : Prop :=
  ∀ n, P288166524826387473.a n = (A046325 (n + 1) : ℚ)

end A046325

/-!
# A046326: Product of 8 successive primes.

The programs for A046326, the canonical program `A046326.P8551065587354507488` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046326 has offset 1).

The definition of A046326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046326.P8551065587354507488

`A000040(n+1)*A046325(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A046326

/-- `A000040(n+1)*A046325(n+2)` -/
def P8551065587354507488.Spec : Prop :=
  ∀ n, P8551065587354507488.a n = A046326 (n + 1)

theorem P8551065587354507488.correct : P8551065587354507488.Spec := by
  intro n
  simp only [A046326, Nat.add_sub_cancel]

end A046326

/-! ## A046326.P10511701195624589672

`A046301(n+1)/A006094(n+2)*A046325(n+2)`
-/

namespace A046326.P10511701195624589672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ) * (A046325 (n + 2) : ℚ)

end

end A046326.P10511701195624589672

namespace A046326

/-- `A046301(n+1)/A006094(n+2)*A046325(n+2)` -/
def P10511701195624589672.Spec : Prop :=
  ∀ n, P10511701195624589672.a n = (A046326 (n + 1) : ℚ)

end A046326

/-! ## A046326.P11448233509120038518

`A046302(n+1)/A046301(n+2)*A046325(n+2)`
-/

namespace A046326.P11448233509120038518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A046301 (n + 2) : ℚ) * (A046325 (n + 2) : ℚ)

end

end A046326.P11448233509120038518

namespace A046326

/-- `A046302(n+1)/A046301(n+2)*A046325(n+2)` -/
def P11448233509120038518.Spec : Prop :=
  ∀ n, P11448233509120038518.a n = (A046326 (n + 1) : ℚ)

end A046326

/-! ## A046326.P1529932916740646357

`A046303(n+1)/A046302(n+2)*A046325(n+2)`
-/

namespace A046326.P1529932916740646357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046303 (n + 1) : ℚ) / (A046302 (n + 2) : ℚ) * (A046325 (n + 2) : ℚ)

end

end A046326.P1529932916740646357

namespace A046326

/-- `A046303(n+1)/A046302(n+2)*A046325(n+2)` -/
def P1529932916740646357.Spec : Prop :=
  ∀ n, P1529932916740646357.a n = (A046326 (n + 1) : ℚ)

end A046326

/-! ## A046326.P16677556345943783814

`A046324(n+1)/A046303(n+2)*A046325(n+2)`
-/

namespace A046326.P16677556345943783814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046324 (n + 1) : ℚ) / (A046303 (n + 2) : ℚ) * (A046325 (n + 2) : ℚ)

end

end A046326.P16677556345943783814

namespace A046326

/-- `A046324(n+1)/A046303(n+2)*A046325(n+2)` -/
def P16677556345943783814.Spec : Prop :=
  ∀ n, P16677556345943783814.a n = (A046326 (n + 1) : ℚ)

end A046326

/-! ## A046326.P6641619968968275207

`A046325(n+1)/A046324(n+2)*A046325(n+2)`
-/

namespace A046326.P6641619968968275207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046325 (n + 1) : ℚ) / (A046324 (n + 2) : ℚ) * (A046325 (n + 2) : ℚ)

end

end A046326.P6641619968968275207

namespace A046326

/-- `A046325(n+1)/A046324(n+2)*A046325(n+2)` -/
def P6641619968968275207.Spec : Prop :=
  ∀ n, P6641619968968275207.a n = (A046326 (n + 1) : ℚ)

end A046326

/-! ## A046326.P10402610040542266856

`A006094(n+1)*A046324(n+3)`
-/

namespace A046326.P10402610040542266856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A046324 (n + 3)

end

end A046326.P10402610040542266856

namespace A046326

/-- `A006094(n+1)*A046324(n+3)` -/
def P10402610040542266856.Spec : Prop :=
  ∀ n, P10402610040542266856.a n = A046326 (n + 1)

end A046326

/-! ## A046326.P9177294682745279303

`A046301(n+1)*A046303(n+4)`
-/

namespace A046326.P9177294682745279303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A046303 (n + 4)

end

end A046326.P9177294682745279303

namespace A046326

/-- `A046301(n+1)*A046303(n+4)` -/
def P9177294682745279303.Spec : Prop :=
  ∀ n, P9177294682745279303.a n = A046326 (n + 1)

end A046326

/-! ## A046326.P17979558768151081185

`A046325(n+1)*A224534(n+1)`
-/

namespace A046326.P17979558768151081185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046325 (n + 1) * A224534 (n + 1)

end

end A046326.P17979558768151081185

namespace A046326

/-- `A046325(n+1)*A224534(n+1)` -/
def P17979558768151081185.Spec : Prop :=
  ∀ n, P17979558768151081185.a n = A046326 (n + 1)

end A046326

/-! ## A046326.P16334327686139693375

`A002110(n+1)/A002110(n)*A046325(n+2)`
-/

namespace A046326.P16334327686139693375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A002110 n : ℚ) * (A046325 (n + 2) : ℚ)

end

end A046326.P16334327686139693375

namespace A046326

/-- `A002110(n+1)/A002110(n)*A046325(n+2)` -/
def P16334327686139693375.Spec : Prop :=
  ∀ n, P16334327686139693375.a n = (A046326 (n + 1) : ℚ)

end A046326

/-!
# A046327: Numbers that are the product of 9 successive primes.

The programs for A046327, the canonical program `A046327.P7138358700051144679` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046327 has offset 1).

The definition of A046327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046327.P7138358700051144679

`A000040(n+1)*A046326(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046327

/-- `A000040(n+1)*A046326(n+2)` -/
def P7138358700051144679.Spec : Prop :=
  ∀ n, P7138358700051144679.a n = A046327 (n + 1)

theorem P7138358700051144679.correct : P7138358700051144679.Spec := by
  intro n
  simp only [A046327, Nat.add_sub_cancel]

end A046327

/-! ## A046327.P11404402131992481494

`A008578(n+2)*A046326(n+2)`
-/

namespace A046327.P11404402131992481494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A046326 (n + 2)

end

end A046327.P11404402131992481494

namespace A046327

/-- `A008578(n+2)*A046326(n+2)` -/
def P11404402131992481494.Spec : Prop :=
  ∀ n, P11404402131992481494.a n = A046327 (n + 1)

end A046327

/-! ## A046327.P9283530880436830902

`A046301(n+1)/A006094(n+2)*A046326(n+2)`
-/

namespace A046327.P9283530880436830902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ) * (A046326 (n + 2) : ℚ)

end

end A046327.P9283530880436830902

namespace A046327

/-- `A046301(n+1)/A006094(n+2)*A046326(n+2)` -/
def P9283530880436830902.Spec : Prop :=
  ∀ n, P9283530880436830902.a n = (A046327 (n + 1) : ℚ)

end A046327

/-! ## A046327.P11782575019038075152

`A046302(n+1)/A046301(n+2)*A046326(n+2)`
-/

namespace A046327.P11782575019038075152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A046301 (n + 2) : ℚ) * (A046326 (n + 2) : ℚ)

end

end A046327.P11782575019038075152

namespace A046327

/-- `A046302(n+1)/A046301(n+2)*A046326(n+2)` -/
def P11782575019038075152.Spec : Prop :=
  ∀ n, P11782575019038075152.a n = (A046327 (n + 1) : ℚ)

end A046327

/-! ## A046327.P4401950234911334072

`A046303(n+1)/A046302(n+2)*A046326(n+2)`
-/

namespace A046327.P4401950234911334072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046303 (n + 1) : ℚ) / (A046302 (n + 2) : ℚ) * (A046326 (n + 2) : ℚ)

end

end A046327.P4401950234911334072

namespace A046327

/-- `A046303(n+1)/A046302(n+2)*A046326(n+2)` -/
def P4401950234911334072.Spec : Prop :=
  ∀ n, P4401950234911334072.a n = (A046327 (n + 1) : ℚ)

end A046327

/-! ## A046327.P13556963863136133428

`A046324(n+1)/A046303(n+2)*A046326(n+2)`
-/

namespace A046327.P13556963863136133428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046324 (n + 1) : ℚ) / (A046303 (n + 2) : ℚ) * (A046326 (n + 2) : ℚ)

end

end A046327.P13556963863136133428

namespace A046327

/-- `A046324(n+1)/A046303(n+2)*A046326(n+2)` -/
def P13556963863136133428.Spec : Prop :=
  ∀ n, P13556963863136133428.a n = (A046327 (n + 1) : ℚ)

end A046327

/-! ## A046327.P5203099368278216521

`A046325(n+1)/A046324(n+2)*A046326(n+2)`
-/

namespace A046327.P5203099368278216521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046325 (n + 1) : ℚ) / (A046324 (n + 2) : ℚ) * (A046326 (n + 2) : ℚ)

end

end A046327.P5203099368278216521

namespace A046327

/-- `A046325(n+1)/A046324(n+2)*A046326(n+2)` -/
def P5203099368278216521.Spec : Prop :=
  ∀ n, P5203099368278216521.a n = (A046327 (n + 1) : ℚ)

end A046327

/-! ## A046327.P14753628030281868727

`A046326(n+1)/A046325(n+2)*A046326(n+2)`
-/

namespace A046327.P14753628030281868727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046326 (n + 1) : ℚ) / (A046325 (n + 2) : ℚ) * (A046326 (n + 2) : ℚ)

end

end A046327.P14753628030281868727

namespace A046327

/-- `A046326(n+1)/A046325(n+2)*A046326(n+2)` -/
def P14753628030281868727.Spec : Prop :=
  ∀ n, P14753628030281868727.a n = (A046327 (n + 1) : ℚ)

end A046327

/-! ## A046327.P2427062953162173525

`A006094(n+1)*A046325(n+3)`
-/

namespace A046327.P2427062953162173525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A046325 (n + 3)

end

end A046327.P2427062953162173525

namespace A046327

/-- `A006094(n+1)*A046325(n+3)` -/
def P2427062953162173525.Spec : Prop :=
  ∀ n, P2427062953162173525.a n = A046327 (n + 1)

end A046327

/-! ## A046327.P2465109218640712202

`A046301(n+1)*A046324(n+4)`
-/

namespace A046327.P2465109218640712202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A046324 (n + 4)

end

end A046327.P2465109218640712202

namespace A046327

/-- `A046301(n+1)*A046324(n+4)` -/
def P2465109218640712202.Spec : Prop :=
  ∀ n, P2465109218640712202.a n = A046327 (n + 1)

end A046327

/-! ## A046327.P4704583962393226247

`A046325(n+3)*A333747(2*n+1)`
-/

namespace A046327.P4704583962393226247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046325 (n + 3) * A333747 (2 * n + 1)

end

end A046327.P4704583962393226247

namespace A046327

/-- `A046325(n+3)*A333747(2*n+1)` -/
def P4704583962393226247.Spec : Prop :=
  ∀ n, P4704583962393226247.a n = A046327 (n + 1)

end A046327

/-!
# A046328: Palindromes with exactly 2 prime factors (counted with multiplicity).

The programs for A046328, there is no canonical definition to state claims against.
-/

/-! ## A046328.P992853993733700061

`∪[A075812(n+1), A075813(n+1)]`
-/

namespace A046328.P992853993733700061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P992853993733700061

/-! ## A046328.P1782786671006859825

`∩[A002113(n+1), A085751(n+1)]`
-/

namespace A046328.P1782786671006859825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P1782786671006859825

/-! ## A046328.P10417170582878880837

`∩[A032350(n+1), A085751(n+1)]`
-/

namespace A046328.P10417170582878880837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P10417170582878880837

/-! ## A046328.P5108926929445590565

`∩[A035135(n+1), A085751(n+1)]`
-/

namespace A046328.P5108926929445590565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P5108926929445590565

/-! ## A046328.P2495278195599259108

`∩[A046338(n+1), A085751(n+1)]`
-/

namespace A046328.P2495278195599259108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P2495278195599259108

/-! ## A046328.P8820487649676354406

`∩[A061917(n+1), A085751(n+1)]`
-/

namespace A046328.P8820487649676354406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P8820487649676354406

/-! ## A046328.P12771528934922363273

`∩[A085751(n+1), A169824(n+1)]`
-/

namespace A046328.P12771528934922363273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P12771528934922363273

/-! ## A046328.P1880730091669457638

`∩[A085751(n+1), A324988(n+1)]`
-/

namespace A046328.P1880730091669457638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P1880730091669457638

/-! ## A046328.P9643450077842414646

`∩[A001358(n+1), A002113(n+1)]`
-/

namespace A046328.P9643450077842414646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P9643450077842414646

/-! ## A046328.P1430904189694404226

`∩[A001358(n+1), A046338(n+1)]`
-/

namespace A046328.P1430904189694404226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046328.P1430904189694404226

/-! ## A046328.P9510004525036211098

`filter[A032350(n+1), A064911(#)]`
-/

namespace A046328.P9510004525036211098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046328.P9510004525036211098

/-! ## A046328.P1585257075720523710

`filter[A035135(n+1), A064911(#)]`
-/

namespace A046328.P1585257075720523710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046328.P1585257075720523710

/-! ## A046328.P2772340996107589302

`filter[A046338(n+1), A064911(#)]`
-/

namespace A046328.P2772340996107589302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046328.P2772340996107589302

/-! ## A046328.P1254102872204950570

`filter[A032350(n+1), A101040(#)]`
-/

namespace A046328.P1254102872204950570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046328.P1254102872204950570

/-! ## A046328.P5018244073967357576

`filter[A035135(n+1), A101040(#)]`
-/

namespace A046328.P5018244073967357576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046328.P5018244073967357576

/-! ## A046328.P10719229009561115532

`filter[A046338(n+1), A101040(#)]`
-/

namespace A046328.P10719229009561115532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046328.P10719229009561115532

/-! ## A046328.P18253312350827312536

`filter[A110751(n+1), A064911(#)]`
-/

namespace A046328.P18253312350827312536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046328.P18253312350827312536

/-! ## A046328.P2841222445067662259

`filter[A035135(n+1), A353799(#)]`
-/

namespace A046328.P2841222445067662259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A046328.P2841222445067662259

/-! ## A046328.P14699961632264623243

`filter[A324988(n+1), A064911(#)]`
-/

namespace A046328.P14699961632264623243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046328.P14699961632264623243

/-! ## A046328.P16002207216298960245

`filter[A002113(n+2), A064911(#)]`
-/

namespace A046328.P16002207216298960245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046328.P16002207216298960245

/-!
# A046329: Palindromes with exactly 3 prime factors (counted with multiplicity).

The programs for A046329, there is no canonical definition to state claims against.
-/

/-! ## A046329.P16630244277206471149

`∩[A002113(n+1), A366430(n+1)]`
-/

namespace A046329.P16630244277206471149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P16630244277206471149

/-! ## A046329.P14821589646435700159

`∩[A032350(n+1), A366430(n+1)]`
-/

namespace A046329.P14821589646435700159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P14821589646435700159

/-! ## A046329.P6413592491296787940

`∩[A046341(n+1), A366430(n+1)]`
-/

namespace A046329.P6413592491296787940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P6413592491296787940

/-! ## A046329.P133087220796044509

`∩[A061917(n+1), A366430(n+1)]`
-/

namespace A046329.P133087220796044509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P133087220796044509

/-! ## A046329.P6487061966518692093

`∩[A169824(n+1), A366430(n+1)]`
-/

namespace A046329.P6487061966518692093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P6487061966518692093

/-! ## A046329.P12977362711844386143

`∩[A306273(n+1), A366430(n+1)]`
-/

namespace A046329.P12977362711844386143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P12977362711844386143

/-! ## A046329.P5636444689521844807

`∩[A324988(n+1), A366430(n+1)]`
-/

namespace A046329.P5636444689521844807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P5636444689521844807

/-! ## A046329.P14370472452422595574

`∩[A325322(n+1), A366430(n+1)]`
-/

namespace A046329.P14370472452422595574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P14370472452422595574

/-! ## A046329.P8744968742475525986

`filter[A324988(n+1), A358753(#)]`
-/

namespace A046329.P8744968742475525986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A046329.P8744968742475525986

/-! ## A046329.P6459784245366349347

`filter[A324988(n+2), A373975(#)]`
-/

namespace A046329.P6459784245366349347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A046329.P6459784245366349347

/-! ## A046329.P12349474900246060917

`filter[A046341(n+1), A340369(#)]`
-/

namespace A046329.P12349474900246060917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A046329.P12349474900246060917

/-! ## A046329.P8098377342996043897

`∩[A002113(n+1), A014612(n+1)]`
-/

namespace A046329.P8098377342996043897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P8098377342996043897

/-! ## A046329.P135684515544898961

`∩[A014612(n+1), A032350(n+1)]`
-/

namespace A046329.P135684515544898961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P135684515544898961

/-! ## A046329.P17052303345581729829

`∩[A014612(n+1), A046341(n+1)]`
-/

namespace A046329.P17052303345581729829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P17052303345581729829

/-! ## A046329.P7221711846046380143

`∩[A014612(n+1), A083158(n+1)]`
-/

namespace A046329.P7221711846046380143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P7221711846046380143

/-! ## A046329.P5675880820016047082

`∩[A014612(n+1), A324988(n+1)]`
-/

namespace A046329.P5675880820016047082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P5675880820016047082

/-! ## A046329.P2432239463682881043

`∩[A014612(n+1), A325322(n+1)]`
-/

namespace A046329.P2432239463682881043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P2432239463682881043

/-! ## A046329.P1573126101869766143

`∩[A324988(n+1), A358763(n+1)]`
-/

namespace A046329.P1573126101869766143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P1573126101869766143

/-! ## A046329.P10566551632118079821

`∩[A046341(n+1), A326111(n+1)]`
-/

namespace A046329.P10566551632118079821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P10566551632118079821

/-! ## A046329.P15047860634564185487

`∩[A046341(n+1), A298207(n+1)]`
-/

namespace A046329.P15047860634564185487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046329.P15047860634564185487

/-!
# A046330: Palindromes with exactly 4 prime factors (counted with multiplicity).

The programs for A046330, there is no canonical definition to state claims against.
-/

/-! ## A046330.P2925259963540365490

`filter[A032350(n+1), A101637(#)]`
-/

namespace A046330.P2925259963540365490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046330.P2925259963540365490

/-! ## A046330.P15812928649485372311

`filter[A046338(n+1), A101637(#)]`
-/

namespace A046330.P15812928649485372311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046330.P15812928649485372311

/-! ## A046330.P11639653221902458701

`filter[A325322(n+1), A101637(#)]`
-/

namespace A046330.P11639653221902458701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046330.P11639653221902458701

/-! ## A046330.P1731966706510037985

`∩[A002113(n+1), A014613(n+1)]`
-/

namespace A046330.P1731966706510037985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046330.P1731966706510037985

/-! ## A046330.P3051295875720861325

`∩[A014613(n+1), A032350(n+1)]`
-/

namespace A046330.P3051295875720861325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046330.P3051295875720861325

/-! ## A046330.P7641658083181034271

`∩[A014613(n+1), A046338(n+1)]`
-/

namespace A046330.P7641658083181034271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046330.P7641658083181034271

/-! ## A046330.P14768417861354050986

`∩[A014613(n+1), A083158(n+1)]`
-/

namespace A046330.P14768417861354050986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046330.P14768417861354050986

/-! ## A046330.P9212999565727254479

`∩[A014613(n+1), A325322(n+1)]`
-/

namespace A046330.P9212999565727254479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046330.P9212999565727254479

/-! ## A046330.P2094787477395508015

`∩[A046338(n+1), A323350(n+1)]`
-/

namespace A046330.P2094787477395508015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046330.P2094787477395508015

/-!
# A046331: Palindromes with exactly 5 prime factors (counted with multiplicity).

The programs for A046331, there is no canonical definition to state claims against.
-/

/-! ## A046331.P11720881458543149441

`∩[A002113(n+1), A014614(n+1)]`
-/

namespace A046331.P11720881458543149441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046331.P11720881458543149441

/-! ## A046331.P25097264207288133

`∩[A014614(n+1), A032350(n+1)]`
-/

namespace A046331.P25097264207288133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046331.P25097264207288133

/-! ## A046331.P17519534158571380287

`∩[A014614(n+1), A046341(n+1)]`
-/

namespace A046331.P17519534158571380287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046331.P17519534158571380287

/-! ## A046331.P11802243419476268374

`∩[A014614(n+1), A083158(n+1)]`
-/

namespace A046331.P11802243419476268374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046331.P11802243419476268374

/-! ## A046331.P12996961867232483826

`∩[A014614(n+1), A325322(n+1)]`
-/

namespace A046331.P12996961867232483826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046331.P12996961867232483826

/-!
# A046332: Palindromes with exactly 6 prime factors (counted with multiplicity).

The programs for A046332, there is no canonical definition to state claims against.
-/

/-! ## A046332.P6260733529758704322

`∩[A046306(n+1), A046338(n+1)]`
-/

namespace A046332.P6260733529758704322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046332.P6260733529758704322

/-!
# A046333: Palindromes with exactly 7 prime factors (counted with multiplicity).

The programs for A046333, there is no canonical definition to state claims against.
-/

/-! ## A046333.P13263671235850736735

`∩[A002113(n+1), A046308(n+1)]`
-/

namespace A046333.P13263671235850736735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046333.P13263671235850736735

/-!
# A046334: Palindromes with exactly 8 prime factors (counted with multiplicity).

The programs for A046334, there is no canonical definition to state claims against.
-/

/-! ## A046334.P8891616601278445147

`∩[A002113(n+1), A046310(n+1)]`
-/

namespace A046334.P8891616601278445147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046334.P8891616601278445147

/-! ## A046334.P167752187063924622

`∩[A046310(n+1), A046338(n+1)]`
-/

namespace A046334.P167752187063924622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046334.P167752187063924622

/-!
# A046335: Palindromes with exactly 9 prime factors (counted with multiplicity).

The programs for A046335, there is no canonical definition to state claims against.
-/

/-! ## A046335.P2368793877466109198

`∩[A002113(n+1), A046312(n+1)]`
-/

namespace A046335.P2368793877466109198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046335.P2368793877466109198

/-! ## A046335.P12320260632142617471

`∩[A029951(n+1), A046312(n+1)]`
-/

namespace A046335.P12320260632142617471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046335.P12320260632142617471

/-! ## A046335.P7903422079867743601

`∩[A035133(n+1), A046312(n+1)]`
-/

namespace A046335.P7903422079867743601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046335.P7903422079867743601

/-!
# A046336: Palindromes with exactly 10 prime factors (counted with multiplicity).

The programs for A046336, there is no canonical definition to state claims against.
-/

/-! ## A046336.P16200503651747075775

`∩[2*A046312(n+1), A035133(n+1)]`
-/

namespace A046336.P16200503651747075775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046336.P16200503651747075775

/-! ## A046336.P10203654197365895136

`∩[A035133(n+1), A046314(n+1)]`
-/

namespace A046336.P10203654197365895136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046336.P10203654197365895136

/-! ## A046336.P17475935284965460775

`∩[A045639(n+1), A046314(n+1)]`
-/

namespace A046336.P17475935284965460775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046336.P17475935284965460775

/-! ## A046336.P383655134707046006

`∩[A045643(n+1), A046314(n+1)]`
-/

namespace A046336.P383655134707046006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046336.P383655134707046006

/-! ## A046336.P16257204304478506040

`∩[A046314(n+1), A098775(n+1)]`
-/

namespace A046336.P16257204304478506040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046336.P16257204304478506040

/-!
# A046337: Odd numbers with an even number of prime factors (counted with multiplicity).

The programs for A046337, the canonical program `A046337.P8460392914178476196` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046337 has offset 1).

The definition of A046337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046337.P981424451872480063

`eq[0, A327858(n)%2]`
-/

namespace A046337.P981424451872480063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327858 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046337.P981424451872480063

namespace A046337

/-- `eq[0, A327858(n)%2]` -/
def P981424451872480063.Spec : Prop :=
  ∀ n, (P981424451872480063.a n : ℤ) = A046337 (n + 1)

end A046337

/-! ## A046337.P15348351146632398086

`lt[xor(n, A358680(n)), n]`
-/

namespace A046337.P15348351146632398086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A358680 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046337.P15348351146632398086

namespace A046337

/-- `lt[xor(n, A358680(n)), n]` -/
def P15348351146632398086.Spec : Prop :=
  ∀ n, (P15348351146632398086.a n : ℤ) = A046337 (n + 1)

end A046337

/-! ## A046337.P8601555589732501589

`eq[1, A166698(n+1)]+1`
-/

namespace A046337.P8601555589732501589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046337.P8601555589732501589

namespace A046337

/-- `eq[1, A166698(n+1)]+1` -/
def P8601555589732501589.Spec : Prop :=
  ∀ n, (P8601555589732501589.a n : ℤ) = A046337 (n + 1)

end A046337

/-! ## A046337.P8460392914178476196

`eq[1, A353557(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046337

/-- `eq[1, A353557(n+1)]+1` -/
def P8460392914178476196.Spec : Prop :=
  ∀ n, (P8460392914178476196.a n : ℤ) = A046337 (n + 1)

theorem P8460392914178476196.correct : P8460392914178476196.Spec := by
  intro n
  simp only [A046337, Nat.add_sub_cancel]

end A046337

/-! ## A046337.P5720225082577395313

`∩[2*n+1, A368998(n+1)]`
-/

namespace A046337.P5720225082577395313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046337.P5720225082577395313

namespace A046337

/-- `∩[2*n+1, A368998(n+1)]` -/
def P5720225082577395313.Spec : Prop :=
  ∀ n, (P5720225082577395313.a n : ℤ) = A046337 (n + 1)

end A046337

/-! ## A046337.P7094082946103267735

`lt[val((n+1)*(A001222(n+1)+1), 2), 1]+1`
-/

namespace A046337.P7094082946103267735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * (A001222 (n + 1) + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046337.P7094082946103267735

namespace A046337

/-- `lt[val((n+1)*(A001222(n+1)+1), 2), 1]+1` -/
def P7094082946103267735.Spec : Prop :=
  ∀ n, (P7094082946103267735.a n : ℤ) = A046337 (n + 1)

end A046337

/-! ## A046337.P18024166414572784718

`record[(2*n+1)*(-1)^A001222(2*n+1)]`
-/

namespace A046337.P18024166414572784718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (-1 : ℚ) ^ (A001222 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046337.P18024166414572784718

namespace A046337

/-- `record[(2*n+1)*(-1)^A001222(2*n+1)]` -/
def P18024166414572784718.Spec : Prop :=
  ∀ n, P18024166414572784718.a n = (A046337 (n + 1) : ℚ)

end A046337

/-! ## A046337.P13708000438891571054

`eq[2, A020639(A327858(n))]`
-/

namespace A046337.P13708000438891571054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A327858 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046337.P13708000438891571054

namespace A046337

/-- `eq[2, A020639(A327858(n))]` -/
def P13708000438891571054.Spec : Prop :=
  ∀ n, (P13708000438891571054.a n : ℤ) = A046337 (n + 1)

end A046337

/-! ## A046337.P13700518677252044056

`filter[A370125(n+1), A035263(#)]`
-/

namespace A046337.P13700518677252044056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A046337.P13700518677252044056

namespace A046337

/-- `filter[A370125(n+1), A035263(#)]` -/
def P13700518677252044056.Spec : Prop :=
  ∀ n, P13700518677252044056.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P11139415547387754612

`filter[A370125(n+1), A152822(#)]`
-/

namespace A046337.P11139415547387754612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A046337.P11139415547387754612

namespace A046337

/-- `filter[A370125(n+1), A152822(#)]` -/
def P11139415547387754612.Spec : Prop :=
  ∀ n, P11139415547387754612.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P10034008536556766047

`filter[A370125(n+1), A353374(#)]`
-/

namespace A046337.P10034008536556766047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A046337.P10034008536556766047

namespace A046337

/-- `filter[A370125(n+1), A353374(#)]` -/
def P10034008536556766047.Spec : Prop :=
  ∀ n, P10034008536556766047.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P14267826739963084048

`filter[A370125(n+1), A353557(#)]`
-/

namespace A046337.P14267826739963084048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A046337.P14267826739963084048

namespace A046337

/-- `filter[A370125(n+1), A353557(#)]` -/
def P14267826739963084048.Spec : Prop :=
  ∀ n, P14267826739963084048.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P17444514254635216996

`filter[A370125(n+1), A358680(#)]`
-/

namespace A046337.P17444514254635216996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A046337.P17444514254635216996

namespace A046337

/-- `filter[A370125(n+1), A358680(#)]` -/
def P17444514254635216996.Spec : Prop :=
  ∀ n, P17444514254635216996.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P2573861619812076386

`filter[A370125(n+1), A368997(#)]`
-/

namespace A046337.P2573861619812076386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A046337.P2573861619812076386

namespace A046337

/-- `filter[A370125(n+1), A368997(#)]` -/
def P2573861619812076386.Spec : Prop :=
  ∀ n, P2573861619812076386.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P14517522976908973557

`filter[A370125(n+1), A369001(#)]`
-/

namespace A046337.P14517522976908973557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A046337.P14517522976908973557

namespace A046337

/-- `filter[A370125(n+1), A369001(#)]` -/
def P14517522976908973557.Spec : Prop :=
  ∀ n, P14517522976908973557.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P6810680847601004439

`filter[A370125(n+1), A373157(#)]`
-/

namespace A046337.P6810680847601004439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A046337.P6810680847601004439

namespace A046337

/-- `filter[A370125(n+1), A373157(#)]` -/
def P6810680847601004439.Spec : Prop :=
  ∀ n, P6810680847601004439.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P13464062067656765278

`filter[A370125(n+1), A373374(#)]`
-/

namespace A046337.P13464062067656765278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A046337.P13464062067656765278

namespace A046337

/-- `filter[A370125(n+1), A373374(#)]` -/
def P13464062067656765278.Spec : Prop :=
  ∀ n, P13464062067656765278.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P4212896159802600669

`filter[A370125(n+1), A379952(#)]`
-/

namespace A046337.P4212896159802600669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A046337.P4212896159802600669

namespace A046337

/-- `filter[A370125(n+1), A379952(#)]` -/
def P4212896159802600669.Spec : Prop :=
  ∀ n, P4212896159802600669.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P7167542236228306696

`filter[A345452(n+1), A039982(#)]`
-/

namespace A046337.P7167542236228306696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A046337.P7167542236228306696

namespace A046337

/-- `filter[A345452(n+1), A039982(#)]` -/
def P7167542236228306696.Spec : Prop :=
  ∀ n, P7167542236228306696.a n = A046337 (n + 1)

end A046337

/-! ## A046337.P9540647386808093302

`filter[A345452(n+1), A098725(#)]`
-/

namespace A046337.P9540647386808093302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A046337.P9540647386808093302

namespace A046337

/-- `filter[A345452(n+1), A098725(#)]` -/
def P9540647386808093302.Spec : Prop :=
  ∀ n, P9540647386808093302.a n = A046337 (n + 1)

end A046337

/-!
# A046338: Palindromes > 0 with an even number of prime factors (counted with multiplicity).

The programs for A046338, there is no canonical definition to state claims against.
-/

/-! ## A046338.P12235151032426083780

`filter[A032350(n+1), A065043(#)]`
-/

namespace A046338.P12235151032426083780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A046338.P12235151032426083780

/-! ## A046338.P12000820653188981458

`filter[A002113(n+2), A065043(#)]`
-/

namespace A046338.P12000820653188981458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A046338.P12000820653188981458

/-! ## A046338.P7521469115548300882

`∩[A002113(n+1), A028260(n+1)]`
-/

namespace A046338.P7521469115548300882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046338.P7521469115548300882

/-! ## A046338.P10330724196680968437

`∩[A028260(n+1), A032350(n+1)]`
-/

namespace A046338.P10330724196680968437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046338.P10330724196680968437

/-! ## A046338.P6985637061698386876

`record[A047813(A028260(n+1))]`
-/

namespace A046338.P6985637061698386876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A028260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046338.P6985637061698386876

/-! ## A046338.P9701767939602011846

`filter[A028260(n+1), A136522(#)]`
-/

namespace A046338.P9701767939602011846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046338.P9701767939602011846

/-! ## A046338.P13134665351050753389

`record[A047813(A143691(2*n+1))]`
-/

namespace A046338.P13134665351050753389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A143691 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046338.P13134665351050753389

/-! ## A046338.P18438251227485835645

`filter[A143691(2*n+1), A136522(#)]`
-/

namespace A046338.P18438251227485835645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046338.P18438251227485835645

/-!
# A046339: Composite numbers with an odd number of prime factors (counted with multiplicity).

The programs for A046339, the canonical program `A046339.P7778013656365534105` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046339 has offset 1).

The definition of A046339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7743 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046339.P9278197508176494756

`eq[1, (A001222(3*(n+1))-3)%2]+1`
-/

namespace A046339.P9278197508176494756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (3 * (n + 1)) - 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046339.P9278197508176494756

namespace A046339

/-- `eq[1, (A001222(3*(n+1))-3)%2]+1` -/
def P9278197508176494756.Spec : Prop :=
  ∀ n, (P9278197508176494756.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P16261268780706320298

`lt[2, A014963(A001222(n+2))]+2`
-/

namespace A046339.P16261268780706320298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A046339.P16261268780706320298

namespace A046339

/-- `lt[2, A014963(A001222(n+2))]+2` -/
def P16261268780706320298.Spec : Prop :=
  ∀ n, (P16261268780706320298.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P7082403106756024911

`eq[2, A091090(A001222(n+1)²)]+1`
-/

namespace A046339.P7082403106756024911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046339.P7082403106756024911

namespace A046339

/-- `eq[2, A091090(A001222(n+1)²)]+1` -/
def P7082403106756024911.Spec : Prop :=
  ∀ n, (P7082403106756024911.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P9646310558073132851

`eq[2, A092243(A001222(n+1)+1)]+1`
-/

namespace A046339.P9646310558073132851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046339.P9646310558073132851

namespace A046339

/-- `eq[2, A092243(A001222(n+1)+1)]+1` -/
def P9646310558073132851.Spec : Prop :=
  ∀ n, (P9646310558073132851.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P695263146341012121

`lt[2, A325940(A001222(n+1)+1)]+1`
-/

namespace A046339.P695263146341012121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046339.P695263146341012121

namespace A046339

/-- `lt[2, A325940(A001222(n+1)+1)]+1` -/
def P695263146341012121.Spec : Prop :=
  ∀ n, (P695263146341012121.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P2797049751064330143

`lt[23, A046610(A001222(n+1)+4)]+1`
-/

namespace A046339.P2797049751064330143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046610 (A001222 (n + 1) + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046339.P2797049751064330143

namespace A046339

/-- `lt[23, A046610(A001222(n+1)+4)]+1` -/
def P2797049751064330143.Spec : Prop :=
  ∀ n, (P2797049751064330143.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P12541291981056563230

`lt[2, A264026(abs(A001222(n+1)-1))]+1`
-/

namespace A046339.P12541291981056563230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264026 |A001222 (n + 1) - 1|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046339.P12541291981056563230

namespace A046339

/-- `lt[2, A264026(abs(A001222(n+1)-1))]+1` -/
def P12541291981056563230.Spec : Prop :=
  ∀ n, (P12541291981056563230.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P8374578818675793645

`lt[val(A016035(A001222(n+1)+1)+2, 2), 1]+1`
-/

namespace A046339.P8374578818675793645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016035 (A001222 (n + 1) + 1).toNat + 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046339.P8374578818675793645

namespace A046339

/-- `lt[val(A016035(A001222(n+1)+1)+2, 2), 1]+1` -/
def P8374578818675793645.Spec : Prop :=
  ∀ n, (P8374578818675793645.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P7778013656365534105

`filter[A026424(n+1), A005171(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A046339

/-- `filter[A026424(n+1), A005171(#)]` -/
def P7778013656365534105.Spec : Prop :=
  ∀ n, P7778013656365534105.a n = A046339 (n + 1)

theorem P7778013656365534105.correct : P7778013656365534105.Spec := by
  intro n
  simp only [A046339, Nat.add_sub_cancel]

end A046339

/-! ## A046339.P13825231839212135635

`filter[A026424(n+1), A066247(#)]`
-/

namespace A046339.P13825231839212135635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046339.P13825231839212135635

namespace A046339

/-- `filter[A026424(n+1), A066247(#)]` -/
def P13825231839212135635.Spec : Prop :=
  ∀ n, P13825231839212135635.a n = A046339 (n + 1)

end A046339

/-! ## A046339.P2721322338349036654

`filter[A026422(n+1), A066247(#)]`
-/

namespace A046339.P2721322338349036654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046339.P2721322338349036654

namespace A046339

/-- `filter[A026422(n+1), A066247(#)]` -/
def P2721322338349036654.Spec : Prop :=
  ∀ n, P2721322338349036654.a n = A046339 (n + 1)

end A046339

/-! ## A046339.P4403512292291424226

`filter[A026422(n+2), A005171(#)]`
-/

namespace A046339.P4403512292291424226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046339.P4403512292291424226

namespace A046339

/-- `filter[A026422(n+2), A005171(#)]` -/
def P4403512292291424226.Spec : Prop :=
  ∀ n, P4403512292291424226.a n = A046339 (n + 1)

end A046339

/-! ## A046339.P15217438865257882921

`filter[A033942(n+1), A066829(#)]`
-/

namespace A046339.P15217438865257882921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046339.P15217438865257882921

namespace A046339

/-- `filter[A033942(n+1), A066829(#)]` -/
def P15217438865257882921.Spec : Prop :=
  ∀ n, P15217438865257882921.a n = A046339 (n + 1)

end A046339

/-! ## A046339.P11249626500739865197

`∩[A026422(n+1), A033942(n+1)]`
-/

namespace A046339.P11249626500739865197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046339.P11249626500739865197

namespace A046339

/-- `∩[A026422(n+1), A033942(n+1)]` -/
def P11249626500739865197.Spec : Prop :=
  ∀ n, (P11249626500739865197.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P15869467014978896524

`∩[A026424(n+1), A033942(n+1)]`
-/

namespace A046339.P15869467014978896524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046339.P15869467014978896524

namespace A046339

/-- `∩[A026424(n+1), A033942(n+1)]` -/
def P15869467014978896524.Spec : Prop :=
  ∀ n, (P15869467014978896524.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P12018048619328560829

`filter[A111087(n+1), A066829(#)]`
-/

namespace A046339.P12018048619328560829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046339.P12018048619328560829

namespace A046339

/-- `filter[A111087(n+1), A066829(#)]` -/
def P12018048619328560829.Spec : Prop :=
  ∀ n, P12018048619328560829.a n = A046339 (n + 1)

end A046339

/-! ## A046339.P15249967437897479367

`∩[A026424(n+1), A111087(n+1)]`
-/

namespace A046339.P15249967437897479367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046339.P15249967437897479367

namespace A046339

/-- `∩[A026424(n+1), A111087(n+1)]` -/
def P15249967437897479367.Spec : Prop :=
  ∀ n, (P15249967437897479367.a n : ℤ) = A046339 (n + 1)

end A046339

/-! ## A046339.P13474323241131868914

`filter[A289553(n+1), A066829(#)]`
-/

namespace A046339.P13474323241131868914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046339.P13474323241131868914

namespace A046339

/-- `filter[A289553(n+1), A066829(#)]` -/
def P13474323241131868914.Spec : Prop :=
  ∀ n, P13474323241131868914.a n = A046339 (n + 1)

end A046339

/-! ## A046339.P17463189051584692953

`filter[A264828(n+1), A066829(#)]`
-/

namespace A046339.P17463189051584692953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046339.P17463189051584692953

namespace A046339

/-- `filter[A264828(n+1), A066829(#)]` -/
def P17463189051584692953.Spec : Prop :=
  ∀ n, P17463189051584692953.a n = A046339 (n + 1)

end A046339

/-! ## A046339.P9666041466866025746

`filter[A257586(n+1), A066829(#)]`
-/

namespace A046339.P9666041466866025746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046339.P9666041466866025746

namespace A046339

/-- `filter[A257586(n+1), A066829(#)]` -/
def P9666041466866025746.Spec : Prop :=
  ∀ n, P9666041466866025746.a n = A046339 (n + 1)

end A046339

/-!
# A046340: Odd composite numbers with an odd number of prime factors (counted with multiplicity).

The programs for A046340, the canonical program `A046340.P2863459807996963045` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046340 has offset 1).

The definition of A046340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046340.P441238761988037984

`filter[A067019(n+1), A005171(#)]`
-/

namespace A046340.P441238761988037984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046340.P441238761988037984

namespace A046340

/-- `filter[A067019(n+1), A005171(#)]` -/
def P441238761988037984.Spec : Prop :=
  ∀ n, P441238761988037984.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P12337988137355854795

`filter[A067019(n+1), A066247(#)]`
-/

namespace A046340.P12337988137355854795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046340.P12337988137355854795

namespace A046340

/-- `filter[A067019(n+1), A066247(#)]` -/
def P12337988137355854795.Spec : Prop :=
  ∀ n, P12337988137355854795.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P4846318536405770885

`filter[A067019(n+1), A202238(#)]`
-/

namespace A046340.P4846318536405770885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A046340.P4846318536405770885

namespace A046340

/-- `filter[A067019(n+1), A202238(#)]` -/
def P4846318536405770885.Spec : Prop :=
  ∀ n, P4846318536405770885.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P5297269520816750045

`filter[A067019(n+1), A292438(#)]`
-/

namespace A046340.P5297269520816750045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A046340.P5297269520816750045

namespace A046340

/-- `filter[A067019(n+1), A292438(#)]` -/
def P5297269520816750045.Spec : Prop :=
  ∀ n, P5297269520816750045.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P6094616044096410120

`filter[A067019(n+1), A323162(#)]`
-/

namespace A046340.P6094616044096410120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A046340.P6094616044096410120

namespace A046340

/-- `filter[A067019(n+1), A323162(#)]` -/
def P6094616044096410120.Spec : Prop :=
  ∀ n, P6094616044096410120.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P3397421943647227979

`filter[A082686(n+1), A066829(#)]`
-/

namespace A046340.P3397421943647227979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046340.P3397421943647227979

namespace A046340

/-- `filter[A082686(n+1), A066829(#)]` -/
def P3397421943647227979.Spec : Prop :=
  ∀ n, P3397421943647227979.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P3750875917335128769

`∩[A067019(n+1), A082686(n+1)]`
-/

namespace A046340.P3750875917335128769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046340.P3750875917335128769

namespace A046340

/-- `∩[A067019(n+1), A082686(n+1)]` -/
def P3750875917335128769.Spec : Prop :=
  ∀ n, (P3750875917335128769.a n : ℤ) = A046340 (n + 1)

end A046340

/-! ## A046340.P17756123758197948644

`filter[A226025(n+1), A066829(#)]`
-/

namespace A046340.P17756123758197948644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046340.P17756123758197948644

namespace A046340

/-- `filter[A226025(n+1), A066829(#)]` -/
def P17756123758197948644.Spec : Prop :=
  ∀ n, P17756123758197948644.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P16061075470243320882

`∩[A067019(n+1), A226025(n+1)]`
-/

namespace A046340.P16061075470243320882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046340.P16061075470243320882

namespace A046340

/-- `∩[A067019(n+1), A226025(n+1)]` -/
def P16061075470243320882.Spec : Prop :=
  ∀ n, (P16061075470243320882.a n : ℤ) = A046340 (n + 1)

end A046340

/-! ## A046340.P12181970764378648193

`filter[A014076(n+1), A066829(#)]`
-/

namespace A046340.P12181970764378648193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046340.P12181970764378648193

namespace A046340

/-- `filter[A014076(n+1), A066829(#)]` -/
def P12181970764378648193.Spec : Prop :=
  ∀ n, P12181970764378648193.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P7413900712600615183

`filter[A071904(n+1), A066829(#)]`
-/

namespace A046340.P7413900712600615183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046340.P7413900712600615183

namespace A046340

/-- `filter[A071904(n+1), A066829(#)]` -/
def P7413900712600615183.Spec : Prop :=
  ∀ n, P7413900712600615183.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P17712297130128765376

`filter[A014076(n+1), A353558(#)]`
-/

namespace A046340.P17712297130128765376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046340.P17712297130128765376

namespace A046340

/-- `filter[A014076(n+1), A353558(#)]` -/
def P17712297130128765376.Spec : Prop :=
  ∀ n, P17712297130128765376.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P2863459807996963045

`filter[A014076(n+1), A359372(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046340

/-- `filter[A014076(n+1), A359372(#)]` -/
def P2863459807996963045.Spec : Prop :=
  ∀ n, P2863459807996963045.a n = A046340 (n + 1)

theorem P2863459807996963045.correct : P2863459807996963045.Spec := by
  intro n
  simp only [A046340, Nat.add_sub_cancel]

end A046340

/-! ## A046340.P3516467251466079828

`filter[A014076(n+1), A373141(#)]`
-/

namespace A046340.P3516467251466079828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A046340.P3516467251466079828

namespace A046340

/-- `filter[A014076(n+1), A373141(#)]` -/
def P3516467251466079828.Spec : Prop :=
  ∀ n, P3516467251466079828.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P12559337529093390035

`filter[A071904(n+1), A353558(#)]`
-/

namespace A046340.P12559337529093390035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046340.P12559337529093390035

namespace A046340

/-- `filter[A071904(n+1), A353558(#)]` -/
def P12559337529093390035.Spec : Prop :=
  ∀ n, P12559337529093390035.a n = A046340 (n + 1)

end A046340

/-! ## A046340.P13302951007390738696

`∩[A014076(n+1), A067019(n+1)]`
-/

namespace A046340.P13302951007390738696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046340.P13302951007390738696

namespace A046340

/-- `∩[A014076(n+1), A067019(n+1)]` -/
def P13302951007390738696.Spec : Prop :=
  ∀ n, (P13302951007390738696.a n : ℤ) = A046340 (n + 1)

end A046340

/-! ## A046340.P8871231414716159393

`∩[A067019(n+1), A071904(n+1)]`
-/

namespace A046340.P8871231414716159393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046340.P8871231414716159393

namespace A046340

/-- `∩[A067019(n+1), A071904(n+1)]` -/
def P8871231414716159393.Spec : Prop :=
  ∀ n, (P8871231414716159393.a n : ℤ) = A046340 (n + 1)

end A046340

/-! ## A046340.P12651180251238040557

`∩[A014076(n+1), A359373(n+1)]`
-/

namespace A046340.P12651180251238040557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046340.P12651180251238040557

namespace A046340

/-- `∩[A014076(n+1), A359373(n+1)]` -/
def P12651180251238040557.Spec : Prop :=
  ∀ n, (P12651180251238040557.a n : ℤ) = A046340 (n + 1)

end A046340

/-! ## A046340.P12514875461841017462

`∩[A007921(n+1)+2, A067019(n+1)]`
-/

namespace A046340.P12514875461841017462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046340.P12514875461841017462

namespace A046340

/-- `∩[A007921(n+1)+2, A067019(n+1)]` -/
def P12514875461841017462.Spec : Prop :=
  ∀ n, (P12514875461841017462.a n : ℤ) = A046340 (n + 1)

end A046340

/-!
# A046341: Composite palindromes with an odd number of prime factors (counted with multiplicity).

The programs for A046341, there is no canonical definition to state claims against.
-/

/-! ## A046341.P16826363221202933417

`filter[A032350(n+1), A066829(#)]`
-/

namespace A046341.P16826363221202933417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046341.P16826363221202933417

/-! ## A046341.P13519979106746088236

`∩[A002113(n+1), A046339(n+1)]`
-/

namespace A046341.P13519979106746088236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046341.P13519979106746088236

/-! ## A046341.P1796983423167948318

`∩[A032350(n+1), A046339(n+1)]`
-/

namespace A046341.P1796983423167948318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046341.P1796983423167948318

/-! ## A046341.P8506127796316853279

`∩[A046339(n+1), A083158(n+1)]`
-/

namespace A046341.P8506127796316853279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046341.P8506127796316853279

/-! ## A046341.P2012435880645362627

`∩[A046339(n+1), A325322(n+1)]`
-/

namespace A046341.P2012435880645362627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046341.P2012435880645362627

/-! ## A046341.P12669024168278653732

`∩[A026424(n+1), A032350(n+1)]`
-/

namespace A046341.P12669024168278653732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046341.P12669024168278653732

/-! ## A046341.P4375979254101397114

`record[A047813(A046339(n+1))]`
-/

namespace A046341.P4375979254101397114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A046339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046341.P4375979254101397114

/-! ## A046341.P9571180147941973542

`filter[A046339(n+1), A136522(#)]`
-/

namespace A046341.P9571180147941973542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046341.P9571180147941973542

/-!
# A046342: Number of 3-bead necklaces where each bead is a planted trivalent plane tree [or anything else enumerated by the Catalan numbers], by total number of nodes.

The programs for A046342, there is no canonical definition to state claims against.
-/

/-! ## A046342.P5090005983640810639

`A056711(n)+A007595(n+1)`
-/

namespace A046342.P5090005983640810639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056711 n + A007595 (n + 1)

end

end A046342.P5090005983640810639

/-! ## A046342.P15010142154765882730

`A056711(n)+A007123(n+2)-Δ[A001405(n)]`
-/

namespace A046342.P15010142154765882730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056711 n + (A007123 (n + 2) - (f1 (n + 1) - f1 n))

end

end A046342.P15010142154765882730

/-! ## A046342.P9239701242354711152

`A056711(n)+A022553(n+1)-A005354(n+2)`
-/

namespace A046342.P9239701242354711152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056711 n + (A022553 (n + 1) - A005354 (n + 2))

end

end A046342.P9239701242354711152

/-! ## A046342.P16837317240142788101

`A056711(n)+(A097331(n+1)+A000108(n+1))/2`
-/

namespace A046342.P16837317240142788101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056711 n : ℚ) + (A097331 (n + 1) + A000108 (n + 1) : ℚ) / 2

end

end A046342.P16837317240142788101

/-! ## A046342.P13040673964605321726

`A056711(n)+A047996(A099776(n+1))`
-/

namespace A046342.P13040673964605321726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056711 n + A047996 (A099776 (n + 1)).toNat

end

end A046342.P13040673964605321726

/-! ## A046342.P6514629653378869301

`A056711(n)+A037306(A005408(n*(n+2)))`
-/

namespace A046342.P6514629653378869301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056711 n + A037306 (A005408 (n * (n + 2))).toNat

end

end A046342.P6514629653378869301

/-!
# A046343: Sum of the prime factors of the composite numbers (counted with multiplicity).

The programs for A046343, the canonical program `A046343.P14376199206218772197` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046343 has offset 1).

The definition of A046343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046343.P14376199206218772197

`A001414(A002808(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046343

/-- `A001414(A002808(n+1))` -/
def P14376199206218772197.Spec : Prop :=
  ∀ n, P14376199206218772197.a n = A046343 (n + 1)

theorem P14376199206218772197.correct : P14376199206218772197.Spec := by
  intro n
  simp only [A046343, Nat.add_sub_cancel]

end A046343

/-! ## A046343.P4849816292851920849

`A001414(Δ[A053767(n)])`
-/

namespace A046343.P4849816292851920849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat

end

end A046343.P4849816292851920849

namespace A046343

/-- `A001414(Δ[A053767(n)])` -/
def P4849816292851920849.Spec : Prop :=
  ∀ n, P4849816292851920849.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P14049091154175159348

`A107463(Δ[A053767(n)])`
-/

namespace A046343.P14049091154175159348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (f1 (n + 1) - f1 n).toNat

end

end A046343.P14049091154175159348

namespace A046343

/-- `A107463(Δ[A053767(n)])` -/
def P14049091154175159348.Spec : Prop :=
  ∀ n, P14049091154175159348.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P9282636713003942656

`A001414(comp[A351078(n)])`
-/

namespace A046343.P9282636713003942656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046343.P9282636713003942656

namespace A046343

/-- `A001414(comp[A351078(n)])` -/
def P9282636713003942656.Spec : Prop :=
  ∀ n, P9282636713003942656.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P3286153870094346269

`A107463(comp[A351078(n)])`
-/

namespace A046343.P3286153870094346269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046343.P3286153870094346269

namespace A046343

/-- `A107463(comp[A351078(n)])` -/
def P3286153870094346269.Spec : Prop :=
  ∀ n, P3286153870094346269.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P207889546213768744

`A001414(A018252(n+2))`
-/

namespace A046343.P207889546213768744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A018252 (n + 2)).toNat

end

end A046343.P207889546213768744

namespace A046343

/-- `A001414(A018252(n+2))` -/
def P207889546213768744.Spec : Prop :=
  ∀ n, P207889546213768744.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P11725283934459196534

`A001414(A141468(n+3))`
-/

namespace A046343.P11725283934459196534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A141468 (n + 3)).toNat

end

end A046343.P11725283934459196534

namespace A046343

/-- `A001414(A141468(n+3))` -/
def P11725283934459196534.Spec : Prop :=
  ∀ n, P11725283934459196534.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P12304694043054400946

`A001414(lt[0, A082023(n)])`
-/

namespace A046343.P12304694043054400946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046343.P12304694043054400946

namespace A046343

/-- `A001414(lt[0, A082023(n)])` -/
def P12304694043054400946.Spec : Prop :=
  ∀ n, P12304694043054400946.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P2603239587958077153

`A107463(lt[1, A074206(n)])`
-/

namespace A046343.P2603239587958077153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046343.P2603239587958077153

namespace A046343

/-- `A107463(lt[1, A074206(n)])` -/
def P2603239587958077153.Spec : Prop :=
  ∀ n, P2603239587958077153.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P6332544770212443977

`A107463(lt[1, A107286(n)])`
-/

namespace A046343.P6332544770212443977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046343.P6332544770212443977

namespace A046343

/-- `A107463(lt[1, A107286(n)])` -/
def P6332544770212443977.Spec : Prop :=
  ∀ n, P6332544770212443977.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P10747937091978750158

`A107463(lt[1, A107463(n)])`
-/

namespace A046343.P10747937091978750158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046343.P10747937091978750158

namespace A046343

/-- `A107463(lt[1, A107463(n)])` -/
def P10747937091978750158.Spec : Prop :=
  ∀ n, P10747937091978750158.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P14800369603480634281

`A001414(A072668(n+1)+1)`
-/

namespace A046343.P14800369603480634281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A072668 (n + 1) + 1).toNat

end

end A046343.P14800369603480634281

namespace A046343

/-- `A001414(A072668(n+1)+1)` -/
def P14800369603480634281.Spec : Prop :=
  ∀ n, P14800369603480634281.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P6856331392703592216

`A107463(A072668(n+1)+1)`
-/

namespace A046343.P6856331392703592216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A072668 (n + 1) + 1).toNat

end

end A046343.P6856331392703592216

namespace A046343

/-- `A107463(A072668(n+1)+1)` -/
def P6856331392703592216.Spec : Prop :=
  ∀ n, P6856331392703592216.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P11989524203405423113

`A107463(A079696(n+1)-1)`
-/

namespace A046343.P11989524203405423113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A079696 (n + 1) - 1).toNat

end

end A046343.P11989524203405423113

namespace A046343

/-- `A107463(A079696(n+1)-1)` -/
def P11989524203405423113.Spec : Prop :=
  ∀ n, P11989524203405423113.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P935630150706186979

`A107463(eq[1, A339579(n+1)+1])`
-/

namespace A046343.P935630150706186979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046343.P935630150706186979

namespace A046343

/-- `A107463(eq[1, A339579(n+1)+1])` -/
def P935630150706186979.Spec : Prop :=
  ∀ n, P935630150706186979.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P12594356820883204923

`A001414(lt[2, A000005(n+1)]+1)`
-/

namespace A046343.P12594356820883204923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046343.P12594356820883204923

namespace A046343

/-- `A001414(lt[2, A000005(n+1)]+1)` -/
def P12594356820883204923.Spec : Prop :=
  ∀ n, P12594356820883204923.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P5143680302189228537

`A002808(n+1)-A145834(n+1)`
-/

namespace A046343.P5143680302189228537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A145834 (n + 1)

end

end A046343.P5143680302189228537

namespace A046343

/-- `A002808(n+1)-A145834(n+1)` -/
def P5143680302189228537.Spec : Prop :=
  ∀ n, P5143680302189228537.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P14500403475075380131

`A001414(A161537(n+1)-(n+1))`
-/

namespace A046343.P14500403475075380131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A161537 (n + 1) - (n + 1 : ℤ)).toNat

end

end A046343.P14500403475075380131

namespace A046343

/-- `A001414(A161537(n+1)-(n+1))` -/
def P14500403475075380131.Spec : Prop :=
  ∀ n, P14500403475075380131.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P11892348523039482998

`A018252(n+2)-A145834(n+1)`
-/

namespace A046343.P11892348523039482998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A145834 (n + 1)

end

end A046343.P11892348523039482998

namespace A046343

/-- `A018252(n+2)-A145834(n+1)` -/
def P11892348523039482998.Spec : Prop :=
  ∀ n, P11892348523039482998.a n = A046343 (n + 1)

end A046343

/-! ## A046343.P3827032453218358560

`A001414(A071228(n+1)/(n+1))`
-/

namespace A046343.P3827032453218358560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A071228 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A046343.P3827032453218358560

namespace A046343

/-- `A001414(A071228(n+1)/(n+1))` -/
def P3827032453218358560.Spec : Prop :=
  ∀ n, P3827032453218358560.a n = A046343 (n + 1)

end A046343

/-!
# A046344: Sum of the prime factors of the odd composite numbers (counted with multiplicity).

The programs for A046344, the canonical program `A046344.P6539117729032939292` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046344 has offset 1).

The definition of A046344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046344.P7265595072514328953

`A001414(A071904(n+1))`
-/

namespace A046344.P7265595072514328953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A071904 (n + 1)).toNat

end

end A046344.P7265595072514328953

namespace A046344

/-- `A001414(A071904(n+1))` -/
def P7265595072514328953.Spec : Prop :=
  ∀ n, P7265595072514328953.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P6164648525853104096

`A001414(eq[1, A107393(n)])`
-/

namespace A046344.P6164648525853104096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046344.P6164648525853104096

namespace A046344

/-- `A001414(eq[1, A107393(n)])` -/
def P6164648525853104096.Spec : Prop :=
  ∀ n, P6164648525853104096.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P9175610918133132617

`A001414(A309355(n+1)+1)`
-/

namespace A046344.P9175610918133132617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A309355 (n + 1) + 1).toNat

end

end A046344.P9175610918133132617

namespace A046344

/-- `A001414(A309355(n+1)+1)` -/
def P9175610918133132617.Spec : Prop :=
  ∀ n, P9175610918133132617.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P6539117729032939292

`A001414(A007921(n+1)+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046344

/-- `A001414(A007921(n+1)+2)` -/
def P6539117729032939292.Spec : Prop :=
  ∀ n, P6539117729032939292.a n = A046344 (n + 1)

theorem P6539117729032939292.correct : P6539117729032939292.Spec := by
  intro n
  simp only [A046344, Nat.add_sub_cancel]

end A046344

/-! ## A046344.P6394079984873144238

`A001414(A014076(n+2))`
-/

namespace A046344.P6394079984873144238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014076 (n + 2)).toNat

end

end A046344.P6394079984873144238

namespace A046344

/-- `A001414(A014076(n+2))` -/
def P6394079984873144238.Spec : Prop :=
  ∀ n, P6394079984873144238.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P9246618521328577545

`A100005(A053726(n+1))`
-/

namespace A046344.P9246618521328577545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100005 (A053726 (n + 1)).toNat

end

end A046344.P9246618521328577545

namespace A046344

/-- `A100005(A053726(n+1))` -/
def P9246618521328577545.Spec : Prop :=
  ∀ n, P9246618521328577545.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P3223831871415807593

`A100005(A104275(n+2))`
-/

namespace A046344.P3223831871415807593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100005 (A104275 (n + 2)).toNat

end

end A046344.P3223831871415807593

namespace A046344

/-- `A100005(A104275(n+2))` -/
def P3223831871415807593.Spec : Prop :=
  ∀ n, P3223831871415807593.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P12118913944929597564

`A107463(eq[1, A107393(n)])`
-/

namespace A046344.P12118913944929597564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046344.P12118913944929597564

namespace A046344

/-- `A107463(eq[1, A107393(n)])` -/
def P12118913944929597564.Spec : Prop :=
  ∀ n, P12118913944929597564.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P2027422129555000558

`A107463(lt[2, A107286(n)])`
-/

namespace A046344.P2027422129555000558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046344.P2027422129555000558

namespace A046344

/-- `A107463(lt[2, A107286(n)])` -/
def P2027422129555000558.Spec : Prop :=
  ∀ n, P2027422129555000558.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P4042294958953406093

`A001414(A068780(2*(n+1)))`
-/

namespace A046344.P4042294958953406093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A068780 (2 * (n + 1))).toNat

end

end A046344.P4042294958953406093

namespace A046344

/-- `A001414(A068780(2*(n+1)))` -/
def P4042294958953406093.Spec : Prop :=
  ∀ n, P4042294958953406093.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P9793268697019571550

`A046343(A073432(n+2))`
-/

namespace A046344.P9793268697019571550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046343 (A073432 (n + 2)).toNat

end

end A046344.P9793268697019571550

namespace A046344

/-- `A046343(A073432(n+2))` -/
def P9793268697019571550.Spec : Prop :=
  ∀ n, P9793268697019571550.a n = A046344 (n + 1)

end A046344

/-! ## A046344.P17767815539223107775

`A107463(eq[A142150(n), A339579(n+1)])`
-/

namespace A046344.P17767815539223107775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046344.P17767815539223107775

namespace A046344

/-- `A107463(eq[A142150(n), A339579(n+1)])` -/
def P17767815539223107775.Spec : Prop :=
  ∀ n, P17767815539223107775.a n = A046344 (n + 1)

end A046344

/-!
# A046345: Sum of the prime factors of the palindromic composite numbers (counted with multiplicity).

The programs for A046345, there is no canonical definition to state claims against.
-/

/-! ## A046345.P2717372789352222658

`A001414(A032350(1+n+1))`
-/

namespace A046345.P2717372789352222658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A032350 (1 + (n + 1))).toNat

end

end A046345.P2717372789352222658

/-! ## A046345.P11537617520634619524

`A107463(A032350(n+2))%A017128(n)`
-/

namespace A046345.P11537617520634619524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107463 (A032350 (n + 2)).toNat) (A017128 n)

end

end A046345.P11537617520634619524

/-! ## A046345.P12534029144699112777

`gcd(A000038(n)², A107463(A032350(n+2)))`
-/

namespace A046345.P12534029144699112777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A107463 (A032350 (n + 2)).toNat)

end

end A046345.P12534029144699112777

/-! ## A046345.P5374481640619009798

`char[A001281(n)]*A107463(A032350(n+2))`
-/

namespace A046345.P5374481640619009798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A107463 (A032350 (n + 2)).toNat

end

end A046345.P5374481640619009798

/-! ## A046345.P4501630538270806085

`char[A008612(n)]*A107463(A032350(n+2))`
-/

namespace A046345.P4501630538270806085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A107463 (A032350 (n + 2)).toNat

end

end A046345.P4501630538270806085

/-! ## A046345.P660784902642667889

`A107463(A032350(n+2))+A000038(n+1)`
-/

namespace A046345.P660784902642667889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A032350 (n + 2)).toNat + A000038 (n + 1)

end

end A046345.P660784902642667889

/-! ## A046345.P13199027021420067161

`A107463(A032350(n+2)%A245315(n+1))`
-/

namespace A046345.P13199027021420067161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (Int.tmod (A032350 (n + 2)) (A245315 (n + 1))).toNat

end

end A046345.P13199027021420067161

/-! ## A046345.P6947114116928590903

`A001414(record[A047813(A002808(n+1))])`
-/

namespace A046345.P6947114116928590903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046345.P6947114116928590903

/-! ## A046345.P5256514411281723216

`A107463(eq[A056965(n), A339579(n+1)])`
-/

namespace A046345.P5256514411281723216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046345.P5256514411281723216

/-! ## A046345.P1816356950721680885

`A001511(n²+1+n)*A107463(A032350(n+2))`
-/

namespace A046345.P1816356950721680885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 1 + n) * A107463 (A032350 (n + 2)).toNat

end

end A046345.P1816356950721680885

/-! ## A046345.P3082362589867366827

`A006519(n²+1+n)*A107463(A032350(n+2))`
-/

namespace A046345.P3082362589867366827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1 + n) * A107463 (A032350 (n + 2)).toNat

end

end A046345.P3082362589867366827

/-!
# A046346: Composite numbers that are divisible by the sum of their prime factors (counted with multiplicity).

The programs for A046346, the canonical program `A046346.P11573470499410479395` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046346 has offset 1).

The definition of A046346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046346.P11573470499410479395

`∪[A036346(n+1), A036345(n+2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A046346

/-- `∪[A036346(n+1), A036345(n+2)]` -/
def P11573470499410479395.Spec : Prop :=
  ∀ n, (P11573470499410479395.a n : ℤ) = A046346 (n + 1)

theorem P11573470499410479395.correct : P11573470499410479395.Spec := by
  intro n
  simp only [A046346, Nat.add_sub_cancel]

end A046346

/-! ## A046346.P456578594527261271

`∩[A036844(n+1), A341274(n+1)]`
-/

namespace A046346.P456578594527261271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P456578594527261271

namespace A046346

/-- `∩[A036844(n+1), A341274(n+1)]` -/
def P456578594527261271.Spec : Prop :=
  ∀ n, (P456578594527261271.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P11481017526819854833

`∩[A036844(n+1), A341321(n+1)]`
-/

namespace A046346.P11481017526819854833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P11481017526819854833

namespace A046346

/-- `∩[A036844(n+1), A341321(n+1)]` -/
def P11481017526819854833.Spec : Prop :=
  ∀ n, (P11481017526819854833.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P11576538043313983307

`filter[A036844(n+1), A005171(#)]`
-/

namespace A046346.P11576538043313983307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046346.P11576538043313983307

namespace A046346

/-- `filter[A036844(n+1), A005171(#)]` -/
def P11576538043313983307.Spec : Prop :=
  ∀ n, P11576538043313983307.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P10827855461520929322

`filter[A036844(n+1), A066247(#)]`
-/

namespace A046346.P10827855461520929322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046346.P10827855461520929322

namespace A046346

/-- `filter[A036844(n+1), A066247(#)]` -/
def P10827855461520929322.Spec : Prop :=
  ∀ n, P10827855461520929322.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P16585274261957848467

`filter[A341274(n+1), A342460(#)]`
-/

namespace A046346.P16585274261957848467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046346.P16585274261957848467

namespace A046346

/-- `filter[A341274(n+1), A342460(#)]` -/
def P16585274261957848467.Spec : Prop :=
  ∀ n, P16585274261957848467.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P11530456725218411444

`filter[A341321(n+1), A342460(#)]`
-/

namespace A046346.P11530456725218411444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046346.P11530456725218411444

namespace A046346

/-- `filter[A341321(n+1), A342460(#)]` -/
def P11530456725218411444.Spec : Prop :=
  ∀ n, P11530456725218411444.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P14432614715086215083

`filter[A048098(n+1), A342460(#)]`
-/

namespace A046346.P14432614715086215083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046346.P14432614715086215083

namespace A046346

/-- `filter[A048098(n+1), A342460(#)]` -/
def P14432614715086215083.Spec : Prop :=
  ∀ n, P14432614715086215083.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P16736936709960393091

`∩[A036844(n+1), A048098(n+1)]`
-/

namespace A046346.P16736936709960393091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P16736936709960393091

namespace A046346

/-- `∩[A036844(n+1), A048098(n+1)]` -/
def P16736936709960393091.Spec : Prop :=
  ∀ n, (P16736936709960393091.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P343413254163291109

`filter[A387941(n+1), A342460(#)]`
-/

namespace A046346.P343413254163291109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046346.P343413254163291109

namespace A046346

/-- `filter[A387941(n+1), A342460(#)]` -/
def P343413254163291109.Spec : Prop :=
  ∀ n, P343413254163291109.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P16032758982184702029

`∩[A036844(n+1), A387941(n+1)]`
-/

namespace A046346.P16032758982184702029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P16032758982184702029

namespace A046346

/-- `∩[A036844(n+1), A387941(n+1)]` -/
def P16032758982184702029.Spec : Prop :=
  ∀ n, (P16032758982184702029.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P1804669829239473803

`filter[A370354(n+1), A342460(#)]`
-/

namespace A046346.P1804669829239473803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046346.P1804669829239473803

namespace A046346

/-- `filter[A370354(n+1), A342460(#)]` -/
def P1804669829239473803.Spec : Prop :=
  ∀ n, P1804669829239473803.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P13904508774865492985

`∩[A036844(n+1), A370354(n+1)]`
-/

namespace A046346.P13904508774865492985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P13904508774865492985

namespace A046346

/-- `∩[A036844(n+1), A370354(n+1)]` -/
def P13904508774865492985.Spec : Prop :=
  ∀ n, (P13904508774865492985.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P1070015676603057066

`filter[A289553(n+1), A342460(#)]`
-/

namespace A046346.P1070015676603057066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046346.P1070015676603057066

namespace A046346

/-- `filter[A289553(n+1), A342460(#)]` -/
def P1070015676603057066.Spec : Prop :=
  ∀ n, P1070015676603057066.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P17189983039817258412

`∩[A036844(n+1), A289553(n+1)]`
-/

namespace A046346.P17189983039817258412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P17189983039817258412

namespace A046346

/-- `∩[A036844(n+1), A289553(n+1)]` -/
def P17189983039817258412.Spec : Prop :=
  ∀ n, (P17189983039817258412.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P10251521803761594408

`∩[A036844(n+1), A145190(n+1)]`
-/

namespace A046346.P10251521803761594408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P10251521803761594408

namespace A046346

/-- `∩[A036844(n+1), A145190(n+1)]` -/
def P10251521803761594408.Spec : Prop :=
  ∀ n, (P10251521803761594408.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P8860711022156942422

`filter[A347202(n+3), A342460(#)]`
-/

namespace A046346.P8860711022156942422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046346.P8860711022156942422

namespace A046346

/-- `filter[A347202(n+3), A342460(#)]` -/
def P8860711022156942422.Spec : Prop :=
  ∀ n, P8860711022156942422.a n = A046346 (n + 1)

end A046346

/-! ## A046346.P13457102014259763743

`∩[A036844(n+1), A134376(n+1)]`
-/

namespace A046346.P13457102014259763743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P13457102014259763743

namespace A046346

/-- `∩[A036844(n+1), A134376(n+1)]` -/
def P13457102014259763743.Spec : Prop :=
  ∀ n, (P13457102014259763743.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P12770209226645391514

`∩[A036844(n+1), A175526(n+1)]`
-/

namespace A046346.P12770209226645391514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P12770209226645391514

namespace A046346

/-- `∩[A036844(n+1), A175526(n+1)]` -/
def P12770209226645391514.Spec : Prop :=
  ∀ n, (P12770209226645391514.a n : ℤ) = A046346 (n + 1)

end A046346

/-! ## A046346.P9841853599820484552

`∩[A036844(n+1), A257586(n+1)]`
-/

namespace A046346.P9841853599820484552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046346.P9841853599820484552

namespace A046346

/-- `∩[A036844(n+1), A257586(n+1)]` -/
def P9841853599820484552.Spec : Prop :=
  ∀ n, (P9841853599820484552.a n : ℤ) = A046346 (n + 1)

end A046346

/-!
# A046347: Odd composite numbers divisible by the sum of their prime factors (counted with multiplicity).

The programs for A046347, the canonical program `A046347.P17784694146301289836` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046347 has offset 1).

The definition of A046347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4077 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046347.P17784694146301289836

`A036346(record[(n+1)*A036346(n+1)%2])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A046347

/-- `A036346(record[(n+1)*A036346(n+1)%2])` -/
def P17784694146301289836.Spec : Prop :=
  ∀ n, P17784694146301289836.a n = A046347 (n + 1)

theorem P17784694146301289836.correct : P17784694146301289836.Spec := by
  intro n
  simp only [A046347, Nat.add_sub_cancel]

end A046347

/-! ## A046347.P10618964443555197067

`record[A000265(A036346(n+1))]`
-/

namespace A046347.P10618964443555197067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046347.P10618964443555197067

namespace A046347

/-- `record[A000265(A036346(n+1))]` -/
def P10618964443555197067.Spec : Prop :=
  ∀ n, P10618964443555197067.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P8727448152160982961

`filter[A036346(n+1), A359372(#)]`
-/

namespace A046347.P8727448152160982961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A046347.P8727448152160982961

namespace A046347

/-- `filter[A036346(n+1), A359372(#)]` -/
def P8727448152160982961.Spec : Prop :=
  ∀ n, P8727448152160982961.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P14445149873904987205

`filter[A036346(n+1), A374474(#)]`
-/

namespace A046347.P14445149873904987205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A046347.P14445149873904987205

namespace A046347

/-- `filter[A036346(n+1), A374474(#)]` -/
def P14445149873904987205.Spec : Prop :=
  ∀ n, P14445149873904987205.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P17789908452492478874

`filter[A036346(n+1), A379952(#)]`
-/

namespace A046347.P17789908452492478874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A046347.P17789908452492478874

namespace A046347

/-- `filter[A036346(n+1), A379952(#)]` -/
def P17789908452492478874.Spec : Prop :=
  ∀ n, P17789908452492478874.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P2878703038487504476

`∩[A036346(n+1), A046340(n+1)]`
-/

namespace A046347.P2878703038487504476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046347.P2878703038487504476

namespace A046347

/-- `∩[A036346(n+1), A046340(n+1)]` -/
def P2878703038487504476.Spec : Prop :=
  ∀ n, (P2878703038487504476.a n : ℤ) = A046347 (n + 1)

end A046347

/-! ## A046347.P8241313395216044302

`∩[A036844(n+1), A046340(n+1)]`
-/

namespace A046347.P8241313395216044302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046347.P8241313395216044302

namespace A046347

/-- `∩[A036844(n+1), A046340(n+1)]` -/
def P8241313395216044302.Spec : Prop :=
  ∀ n, (P8241313395216044302.a n : ℤ) = A046347 (n + 1)

end A046347

/-! ## A046347.P14377480526412173672

`∩[A046340(n+1), A046346(n+1)]`
-/

namespace A046347.P14377480526412173672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046347.P14377480526412173672

namespace A046347

/-- `∩[A046340(n+1), A046346(n+1)]` -/
def P14377480526412173672.Spec : Prop :=
  ∀ n, (P14377480526412173672.a n : ℤ) = A046347 (n + 1)

end A046347

/-! ## A046347.P5440994246967686675

`filter[A036346(n+1), A323158(#)]`
-/

namespace A046347.P5440994246967686675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A046347.P5440994246967686675

namespace A046347

/-- `filter[A036346(n+1), A323158(#)]` -/
def P5440994246967686675.Spec : Prop :=
  ∀ n, P5440994246967686675.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P8594862321663844946

`filter[A036346(n+1), A324908(#)]`
-/

namespace A046347.P8594862321663844946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A046347.P8594862321663844946

namespace A046347

/-- `filter[A036346(n+1), A324908(#)]` -/
def P8594862321663844946.Spec : Prop :=
  ∀ n, P8594862321663844946.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P18308250366456909162

`filter[A046346(n+1), A324908(#)]`
-/

namespace A046347.P18308250366456909162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A046347.P18308250366456909162

namespace A046347

/-- `filter[A046346(n+1), A324908(#)]` -/
def P18308250366456909162.Spec : Prop :=
  ∀ n, P18308250366456909162.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P9226467109683231367

`filter[A036346(n+1), A353558(#)]`
-/

namespace A046347.P9226467109683231367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046347.P9226467109683231367

namespace A046347

/-- `filter[A036346(n+1), A353558(#)]` -/
def P9226467109683231367.Spec : Prop :=
  ∀ n, P9226467109683231367.a n = A046347 (n + 1)

end A046347

/-! ## A046347.P9897629695553639723

`filter[A046346(n+1), A353558(#)]`
-/

namespace A046347.P9897629695553639723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046347.P9897629695553639723

namespace A046347

/-- `filter[A046346(n+1), A353558(#)]` -/
def P9897629695553639723.Spec : Prop :=
  ∀ n, P9897629695553639723.a n = A046347 (n + 1)

end A046347

/-!
# A046348: Composite palindromes divisible by the sum of their prime factors (counted with multiplicity).

The programs for A046348, there is no canonical definition to state claims against.
-/

/-! ## A046348.P11978476496435898600

`∩[A002113(n+1), A046346(n+1)]`
-/

namespace A046348.P11978476496435898600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046348.P11978476496435898600

/-! ## A046348.P5135769993891443749

`∩[A032350(n+1), A046346(n+1)]`
-/

namespace A046348.P5135769993891443749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046348.P5135769993891443749

/-!
# A046349: Composite numbers with only palindromic prime factors.

The programs for A046349, there is no canonical definition to state claims against.
-/

/-! ## A046349.P3820559558114470889

`filter[A033620(n+1), A066247(#)]`
-/

namespace A046349.P3820559558114470889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046349.P3820559558114470889

/-! ## A046349.P1955080224913459449

`filter[A033620(n+2), A005171(#)]`
-/

namespace A046349.P1955080224913459449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046349.P1955080224913459449

/-! ## A046349.P4242192392517836934

`∩[A002808(n+1), A033620(n+1)]`
-/

namespace A046349.P4242192392517836934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046349.P4242192392517836934

/-! ## A046349.P7397745221167261297

`∩[A018252(n+1), A033620(n+2)]`
-/

namespace A046349.P7397745221167261297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046349.P7397745221167261297

/-! ## A046349.P12555216765564617250

`∩[A141468(n+1), A033620(n+2)]`
-/

namespace A046349.P12555216765564617250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046349.P12555216765564617250

/-! ## A046349.P11495737367546785970

`∩[A033620(n+1), A072668(n+1)+1]`
-/

namespace A046349.P11495737367546785970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046349.P11495737367546785970

/-! ## A046349.P16739314444253371977

`∩[A033620(n+1), A053767(n+1)-A053767(n)]`
-/

namespace A046349.P16739314444253371977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 1) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046349.P16739314444253371977

/-! ## A046349.P11253088486956931405

`record[A288469(A033620(n+4))]`
-/

namespace A046349.P11253088486956931405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A033620 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046349.P11253088486956931405

/-!
# A046350: Odd composite numbers with only palindromic prime factors.

The programs for A046350, there is no canonical definition to state claims against.
-/

/-! ## A046350.P964479928090091035

`∩[A014076(n+1), A046349(n+1)]`
-/

namespace A046350.P964479928090091035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P964479928090091035

/-! ## A046350.P17582223015059842857

`∩[A033620(n+1), A071904(n+1)]`
-/

namespace A046350.P17582223015059842857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P17582223015059842857

/-! ## A046350.P12859387393777131567

`∩[A046349(n+1), A071904(n+1)]`
-/

namespace A046350.P12859387393777131567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P12859387393777131567

/-! ## A046350.P18121841464979877631

`∩[A046349(n+1), A204457(n+1)]`
-/

namespace A046350.P18121841464979877631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P18121841464979877631

/-! ## A046350.P2895713223930623045

`∩[A046349(n+1), A204458(n+1)]`
-/

namespace A046350.P2895713223930623045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P2895713223930623045

/-! ## A046350.P13739434629406976930

`∩[A046349(n+1), A255763(n+1)]`
-/

namespace A046350.P13739434629406976930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P13739434629406976930

/-! ## A046350.P11605254129936335061

`∩[A046349(n+1), A004273(n)]`
-/

namespace A046350.P11605254129936335061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P11605254129936335061

/-! ## A046350.P2519866722969490221

`∩[A046349(n+1), A004274(n)]`
-/

namespace A046350.P2519866722969490221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P2519866722969490221

/-! ## A046350.P6902996021097249887

`∩[A046349(n+1), A020742(n)]`
-/

namespace A046350.P6902996021097249887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P6902996021097249887

/-! ## A046350.P1194398104118447734

`∩[A046349(n+1), A060747(n)]`
-/

namespace A046350.P1194398104118447734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P1194398104118447734

/-! ## A046350.P15857303384230612131

`∩[A046349(n+1), A062545(n)]`
-/

namespace A046350.P15857303384230612131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P15857303384230612131

/-! ## A046350.P2325414778243421088

`∩[A046349(n+1), A130773(n)]`
-/

namespace A046350.P2325414778243421088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P2325414778243421088

/-! ## A046350.P16215450484484471521

`∩[A046349(n+1), A163985(n)]`
-/

namespace A046350.P16215450484484471521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P16215450484484471521

/-! ## A046350.P347708128870294912

`∩[A004280(n+1), A046349(n+1)]`
-/

namespace A046350.P347708128870294912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P347708128870294912

/-! ## A046350.P15892116948235721036

`∩[A005818(n+1), A046349(n+1)]`
-/

namespace A046350.P15892116948235721036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P15892116948235721036

/-! ## A046350.P8693851677333574627

`∩[A020735(n+1), A046349(n+1)]`
-/

namespace A046350.P8693851677333574627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P8693851677333574627

/-! ## A046350.P18370919853500777870

`∩[A046349(n+1), A140139(n+1)]`
-/

namespace A046350.P18370919853500777870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P18370919853500777870

/-! ## A046350.P9819647701056108329

`∩[A046349(n+1), A144396(n+1)]`
-/

namespace A046350.P9819647701056108329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P9819647701056108329

/-! ## A046350.P17125458785666297887

`∩[A046349(n+1), A020710(n)+n]`
-/

namespace A046350.P17125458785666297887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046350.P17125458785666297887

/-!
# A046351: Palindromic composite numbers with only palindromic prime factors.

The programs for A046351, there is no canonical definition to state claims against.
-/

/-! ## A046351.P5680558911953257796

`∩[A002113(n+1), A046349(n+1)]`
-/

namespace A046351.P5680558911953257796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046351.P5680558911953257796

/-! ## A046351.P10462948567246548653

`∩[A032350(n+1), A046349(n+1)]`
-/

namespace A046351.P10462948567246548653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046351.P10462948567246548653

/-! ## A046351.P4318114413718649083

`∩[A046349(n+1), A083158(n+1)]`
-/

namespace A046351.P4318114413718649083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046351.P4318114413718649083

/-! ## A046351.P13900313275002132623

`∩[A046349(n+1), A161600(n+1)]`
-/

namespace A046351.P13900313275002132623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046351.P13900313275002132623

/-! ## A046351.P5206779277424616077

`∩[A046349(n+1), A161597(n+1)]`
-/

namespace A046351.P5206779277424616077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046351.P5206779277424616077

/-! ## A046351.P13822035597895693821

`record[A047813(A046349(n+1))]`
-/

namespace A046351.P13822035597895693821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A046349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046351.P13822035597895693821

/-! ## A046351.P11360585679923230805

`record[A093030(A161600(n+2))]`
-/

namespace A046351.P11360585679923230805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A161600 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046351.P11360585679923230805

/-! ## A046351.P8800156612742650583

`filter[A046349(n+1), A136522(#)]`
-/

namespace A046351.P8800156612742650583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046351.P8800156612742650583

/-! ## A046351.P8466594449733900693

`filter[A161600(n+2), A136522(#)]`
-/

namespace A046351.P8466594449733900693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046351.P8466594449733900693

/-! ## A046351.P5154909251426424736

`A161732(n+1)`
-/

namespace A046351.P5154909251426424736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161732 (n + 1)

end

end A046351.P5154909251426424736

/-!
# A046352: Composite numbers whose sum of prime factors is palindromic (counted with multiplicity).

The programs for A046352, there is no canonical definition to state claims against.
-/

/-! ## A046352.P9389766029707778259

`filter[A327749(n+1), A066247(#)]`
-/

namespace A046352.P9389766029707778259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046352.P9389766029707778259

/-! ## A046352.P18389957229944638583

`filter[A327749(n+2), A005171(#)]`
-/

namespace A046352.P18389957229944638583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046352.P18389957229944638583

/-! ## A046352.P2203568577013693346

`∩[A002808(n+1), A327749(n+1)]`
-/

namespace A046352.P2203568577013693346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046352.P2203568577013693346

/-! ## A046352.P16758025701197989813

`∩[A141468(n+1), A327749(n+2)]`
-/

namespace A046352.P16758025701197989813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046352.P16758025701197989813

/-! ## A046352.P6620989276432149974

`eq[A056965(A107463(n)), A339579(n+1)]`
-/

namespace A046352.P6620989276432149974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046352.P6620989276432149974

/-!
# A046353: Odd composite numbers whose sum of prime factors is palindromic (counted with multiplicity).

The programs for A046353, there is no canonical definition to state claims against.
-/

/-! ## A046353.P5083785907822386658

`A046352(eq[1, gcd(2, A046352(n+1))]+1)`
-/

namespace A046353.P5083785907822386658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A046352 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046353.P5083785907822386658

/-! ## A046353.P14809889511702708804

`A046352(eq[1, and(1, A046352(n+1))]+1)`
-/

namespace A046353.P14809889511702708804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046352 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046353.P14809889511702708804

/-! ## A046353.P9637719374699357060

`∩[A014076(n+1), A046352(n+1)]`
-/

namespace A046353.P9637719374699357060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P9637719374699357060

/-! ## A046353.P7682229095545168361

`∩[A046352(n+1), A071904(n+1)]`
-/

namespace A046353.P7682229095545168361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P7682229095545168361

/-! ## A046353.P330284756044060533

`∩[A071904(n+1), A327749(n+1)]`
-/

namespace A046353.P330284756044060533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P330284756044060533

/-! ## A046353.P14721122075051921499

`∩[A046352(n+1), A255763(n+1)]`
-/

namespace A046353.P14721122075051921499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P14721122075051921499

/-! ## A046353.P2004709175713763943

`∩[A046352(n+1), A257292(n+1)]`
-/

namespace A046353.P2004709175713763943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P2004709175713763943

/-! ## A046353.P4261998537427677745

`∩[A046352(n+1), A004273(n)]`
-/

namespace A046353.P4261998537427677745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P4261998537427677745

/-! ## A046353.P17537068271436422372

`∩[A046352(n+1), A004274(n)]`
-/

namespace A046353.P17537068271436422372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P17537068271436422372

/-! ## A046353.P11181996880273475063

`∩[A046352(n+1), A020742(n)]`
-/

namespace A046353.P11181996880273475063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P11181996880273475063

/-! ## A046353.P18246831702878484243

`∩[A046352(n+1), A060747(n)]`
-/

namespace A046353.P18246831702878484243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P18246831702878484243

/-! ## A046353.P3605289286434336639

`∩[A046352(n+1), A062545(n)]`
-/

namespace A046353.P3605289286434336639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P3605289286434336639

/-! ## A046353.P10279737742071844259

`∩[A046352(n+1), A130773(n)]`
-/

namespace A046353.P10279737742071844259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P10279737742071844259

/-! ## A046353.P9469119370854070143

`∩[A046352(n+1), A163985(n)]`
-/

namespace A046353.P9469119370854070143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P9469119370854070143

/-! ## A046353.P1836098010911013917

`∩[A004280(n+1), A046352(n+1)]`
-/

namespace A046353.P1836098010911013917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P1836098010911013917

/-! ## A046353.P6537548231286039388

`∩[A005818(n+1), A046352(n+1)]`
-/

namespace A046353.P6537548231286039388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P6537548231286039388

/-! ## A046353.P17665265053852358287

`∩[A020735(n+1), A046352(n+1)]`
-/

namespace A046353.P17665265053852358287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P17665265053852358287

/-! ## A046353.P14438137688102246934

`∩[A046352(n+1), A140139(n+1)]`
-/

namespace A046353.P14438137688102246934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P14438137688102246934

/-! ## A046353.P11547497854901931971

`∩[A046352(n+1), A144396(n+1)]`
-/

namespace A046353.P11547497854901931971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046353.P11547497854901931971

/-!
# A046354: Composite palindromes whose sum of prime factors is palindromic (counted with multiplicity).

The programs for A046354, there is no canonical definition to state claims against.
-/

/-! ## A046354.P2517858514799096592

`∩[A002113(n+1), A046352(n+1)]`
-/

namespace A046354.P2517858514799096592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046354.P2517858514799096592

/-! ## A046354.P661169198884274553

`∩[A032350(n+1), A046352(n+1)]`
-/

namespace A046354.P661169198884274553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046354.P661169198884274553

/-! ## A046354.P17553074698568649802

`∩[A046352(n+1), A083158(n+1)]`
-/

namespace A046354.P17553074698568649802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046354.P17553074698568649802

/-! ## A046354.P642077605873850321

`∩[A032350(n+1), A327749(n+2)]`
-/

namespace A046354.P642077605873850321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046354.P642077605873850321

/-! ## A046354.P3025948727925155887

`filter[A046352(n+1), A136522(#)]`
-/

namespace A046354.P3025948727925155887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046354.P3025948727925155887

/-!
# A046355: Composite numbers with only palindromic prime factors whose sum is palindromic (counted with multiplicity).

The programs for A046355, there is no canonical definition to state claims against.
-/

/-! ## A046355.P11080275825000714416

`∩[A033620(n+1), A046352(n+1)]`
-/

namespace A046355.P11080275825000714416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046355.P11080275825000714416

/-! ## A046355.P5997100585531839327

`∩[A046349(n+1), A046352(n+1)]`
-/

namespace A046355.P5997100585531839327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046355.P5997100585531839327

/-! ## A046355.P5773928973931846764

`∩[A046349(n+1), A327749(n+1)]`
-/

namespace A046355.P5773928973931846764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046355.P5773928973931846764

/-! ## A046355.P5864953820695914294

`∩[A046352(n+1), A368955(n+1)]`
-/

namespace A046355.P5864953820695914294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046355.P5864953820695914294

/-! ## A046355.P3636528801947469927

`record[A046352(A308590(n+1))]`
-/

namespace A046355.P3636528801947469927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (A308590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046355.P3636528801947469927

/-!
# A046356: Odd numbers with only palindromic prime factors whose sum is palindromic (counted with multiplicity).

The programs for A046356, there is no canonical definition to state claims against.
-/

/-! ## A046356.P17330197531934165485

`∩[A046350(n+1), A046355(n+1)]`
-/

namespace A046356.P17330197531934165485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P17330197531934165485

/-! ## A046356.P676053054984365787

`A046355(eq[1, A046355(n+1)%2]+1)`
-/

namespace A046356.P676053054984365787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046355 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046356.P676053054984365787

/-! ## A046356.P16689966324920231177

`∩[A033620(n+1), A046353(n+1)]`
-/

namespace A046356.P16689966324920231177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P16689966324920231177

/-! ## A046356.P12173941243695313673

`∩[A046349(n+1), A046353(n+1)]`
-/

namespace A046356.P12173941243695313673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P12173941243695313673

/-! ## A046356.P1114689511721250353

`∩[A046350(n+1), A046353(n+1)]`
-/

namespace A046356.P1114689511721250353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P1114689511721250353

/-! ## A046356.P7628090168515823682

`∩[A046353(n+1), A046355(n+1)]`
-/

namespace A046356.P7628090168515823682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P7628090168515823682

/-! ## A046356.P16405439691980410026

`∩[A046350(n+1), A046352(n+1)]`
-/

namespace A046356.P16405439691980410026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P16405439691980410026

/-! ## A046356.P15321352665979606020

`∩[A046350(n+1), A327749(n+1)]`
-/

namespace A046356.P15321352665979606020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P15321352665979606020

/-! ## A046356.P9059203421102987600

`∩[A014076(n+1), A046355(n+1)]`
-/

namespace A046356.P9059203421102987600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P9059203421102987600

/-! ## A046356.P9810959188675622509

`∩[A046355(n+1), A071904(n+1)]`
-/

namespace A046356.P9810959188675622509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046356.P9810959188675622509

/-!
# A046357: Composite palindromes with only palindromic prime factors whose sum is palindromic (counted with multiplicity).

The programs for A046357, there is no canonical definition to state claims against.
-/

/-! ## A046357.P17566498274577731612

`∩[A046351(n+1), A046354(n+1)]`
-/

namespace A046357.P17566498274577731612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046357.P17566498274577731612

/-! ## A046357.P3362546690168893428

`∩[A046351(n+1), A046355(n+1)]`
-/

namespace A046357.P3362546690168893428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046357.P3362546690168893428

/-! ## A046357.P17516973245256077068

`∩[A046354(n+1), A046355(n+1)]`
-/

namespace A046357.P17516973245256077068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046357.P17516973245256077068

/-! ## A046357.P7758481312291140163

`∩[A002113(n+1), A046355(n+1)]`
-/

namespace A046357.P7758481312291140163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046357.P7758481312291140163

/-! ## A046357.P15853156777582763279

`∩[A032350(n+1), A046355(n+1)]`
-/

namespace A046357.P15853156777582763279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046357.P15853156777582763279

/-!
# A046358: Composite numbers divisible by the palindromic sum of their prime factors (counted with multiplicity).

The programs for A046358, there is no canonical definition to state claims against.
-/

/-! ## A046358.P13480852697311613761

`∩[A046346(n+1), A046352(n+1)]`
-/

namespace A046358.P13480852697311613761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046358.P13480852697311613761

/-! ## A046358.P10683185203020153735

`∩[A046346(n+1), A327749(n+1)]`
-/

namespace A046358.P10683185203020153735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046358.P10683185203020153735

/-! ## A046358.P2767458598511177904

`∩[A036844(n+1), A046352(n+1)]`
-/

namespace A046358.P2767458598511177904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046358.P2767458598511177904

/-!
# A046359: Odd numbers divisible by the palindromic sum of their prime factors (counted with multiplicity).

The programs for A046359, there is no canonical definition to state claims against.
-/

/-! ## A046359.P7180619473700901220

`∩[A046347(n+1), A046358(n+1)]`
-/

namespace A046359.P7180619473700901220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046359.P7180619473700901220

/-! ## A046359.P2788292120719092004

`∩[A036346(n+1), A046353(n+1)]`
-/

namespace A046359.P2788292120719092004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046359.P2788292120719092004

/-! ## A046359.P7464303710261109718

`∩[A046346(n+1), A046353(n+1)]`
-/

namespace A046359.P7464303710261109718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046359.P7464303710261109718

/-! ## A046359.P8941330714959839545

`∩[A046353(n+1), A046358(n+1)]`
-/

namespace A046359.P8941330714959839545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046359.P8941330714959839545

/-!
# A046360: Composite palindromes divisible by the palindromic sum of their prime factors (counted with multiplicity).

The programs for A046360, there is no canonical definition to state claims against.
-/

/-! ## A046360.P11722731949427200345

`∩[A046348(n+1), A046354(n+1)]`
-/

namespace A046360.P11722731949427200345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046360.P11722731949427200345

/-!
# A046363: Composite numbers whose sum of prime factors (with multiplicity) is prime.

The programs for A046363, the canonical program `A046363.P11241308616928514988` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046363 has offset 1).

The definition of A046363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5510 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046363.P10299216294556706930

`eq[A010051(n+1), A274718(n+1)]+1`
-/

namespace A046363.P10299216294556706930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046363.P10299216294556706930

namespace A046363

/-- `eq[A010051(n+1), A274718(n+1)]+1` -/
def P10299216294556706930.Spec : Prop :=
  ∀ n, (P10299216294556706930.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P11241308616928514988

`filter[A100118(n+1), A005171(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A046363

/-- `filter[A100118(n+1), A005171(#)]` -/
def P11241308616928514988.Spec : Prop :=
  ∀ n, P11241308616928514988.a n = A046363 (n + 1)

theorem P11241308616928514988.correct : P11241308616928514988.Spec := by
  intro n
  simp only [A046363, Nat.add_sub_cancel]

end A046363

/-! ## A046363.P5065411386845186470

`filter[A100118(n+1), A066247(#)]`
-/

namespace A046363.P5065411386845186470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046363.P5065411386845186470

namespace A046363

/-- `filter[A100118(n+1), A066247(#)]` -/
def P5065411386845186470.Spec : Prop :=
  ∀ n, P5065411386845186470.a n = A046363 (n + 1)

end A046363

/-! ## A046363.P1732149164149876719

`filter[A100118(n+1), A202238(#)]`
-/

namespace A046363.P1732149164149876719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A046363.P1732149164149876719

namespace A046363

/-- `filter[A100118(n+1), A202238(#)]` -/
def P1732149164149876719.Spec : Prop :=
  ∀ n, P1732149164149876719.a n = A046363 (n + 1)

end A046363

/-! ## A046363.P4272904498813243638

`∩[A036350(n+1), A100118(n+1)]`
-/

namespace A046363.P4272904498813243638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P4272904498813243638

namespace A046363

/-- `∩[A036350(n+1), A100118(n+1)]` -/
def P4272904498813243638.Spec : Prop :=
  ∀ n, (P4272904498813243638.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P12716355335680337556

`eq[0, A007920(A107463(n))]`
-/

namespace A046363.P12716355335680337556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046363.P12716355335680337556

namespace A046363

/-- `eq[0, A007920(A107463(n))]` -/
def P12716355335680337556.Spec : Prop :=
  ∀ n, (P12716355335680337556.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P10657263334165542693

`filter[A100118(n+1), A174898(#)]`
-/

namespace A046363.P10657263334165542693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A046363.P10657263334165542693

namespace A046363

/-- `filter[A100118(n+1), A174898(#)]` -/
def P10657263334165542693.Spec : Prop :=
  ∀ n, P10657263334165542693.a n = A046363 (n + 1)

end A046363

/-! ## A046363.P10552652821852933014

`lt[A107463(A107463(n))², A107286(n)]`
-/

namespace A046363.P10552652821852933014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A107463 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046363.P10552652821852933014

namespace A046363

/-- `lt[A107463(A107463(n))², A107286(n)]` -/
def P10552652821852933014.Spec : Prop :=
  ∀ n, (P10552652821852933014.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P6446499124818857221

`eq[1, A339579(n+1)+A107463(A107463(n))]`
-/

namespace A046363.P6446499124818857221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + A107463 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046363.P6446499124818857221

namespace A046363

/-- `eq[1, A339579(n+1)+A107463(A107463(n))]` -/
def P6446499124818857221.Spec : Prop :=
  ∀ n, (P6446499124818857221.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P1597705599451902037

`∩[A100118(n+1), A175352(n+1)]`
-/

namespace A046363.P1597705599451902037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P1597705599451902037

namespace A046363

/-- `∩[A100118(n+1), A175352(n+1)]` -/
def P1597705599451902037.Spec : Prop :=
  ∀ n, (P1597705599451902037.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P1433070823005549324

`∩[A082300(n+1), A100118(n+1)]`
-/

namespace A046363.P1433070823005549324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P1433070823005549324

namespace A046363

/-- `∩[A082300(n+1), A100118(n+1)]` -/
def P1433070823005549324.Spec : Prop :=
  ∀ n, (P1433070823005549324.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P4306302512085715445

`eq[2, A309892(2*A107463(n))]`
-/

namespace A046363.P4306302512085715445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (2 * A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046363.P4306302512085715445

namespace A046363

/-- `eq[2, A309892(2*A107463(n))]` -/
def P4306302512085715445.Spec : Prop :=
  ∀ n, (P4306302512085715445.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P8401406605876111510

`∩[A100118(n+1), A175526(n+1)]`
-/

namespace A046363.P8401406605876111510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P8401406605876111510

namespace A046363

/-- `∩[A100118(n+1), A175526(n+1)]` -/
def P8401406605876111510.Spec : Prop :=
  ∀ n, (P8401406605876111510.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P8127944044713912141

`∩[A100118(n+1), A106543(n+1)]`
-/

namespace A046363.P8127944044713912141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P8127944044713912141

namespace A046363

/-- `∩[A100118(n+1), A106543(n+1)]` -/
def P8127944044713912141.Spec : Prop :=
  ∀ n, (P8127944044713912141.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P10086266604189335878

`∩[A089229(n+1), A100118(n+1)]`
-/

namespace A046363.P10086266604189335878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P10086266604189335878

namespace A046363

/-- `∩[A089229(n+1), A100118(n+1)]` -/
def P10086266604189335878.Spec : Prop :=
  ∀ n, (P10086266604189335878.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P5541606869151334171

`∩[A024619(n+1), A100118(n+1)]`
-/

namespace A046363.P5541606869151334171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P5541606869151334171

namespace A046363

/-- `∩[A024619(n+1), A100118(n+1)]` -/
def P5541606869151334171.Spec : Prop :=
  ∀ n, (P5541606869151334171.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P7364217123396292898

`∩[A100118(n+1), A361102(n+1)]`
-/

namespace A046363.P7364217123396292898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P7364217123396292898

namespace A046363

/-- `∩[A100118(n+1), A361102(n+1)]` -/
def P7364217123396292898.Spec : Prop :=
  ∀ n, (P7364217123396292898.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P18364137707557637880

`∩[A100118(n+1), A139118(n+1)]`
-/

namespace A046363.P18364137707557637880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P18364137707557637880

namespace A046363

/-- `∩[A100118(n+1), A139118(n+1)]` -/
def P18364137707557637880.Spec : Prop :=
  ∀ n, (P18364137707557637880.a n : ℤ) = A046363 (n + 1)

end A046363

/-! ## A046363.P11605596648931639094

`∩[A100118(n+1), A268388(n+1)]`
-/

namespace A046363.P11605596648931639094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046363.P11605596648931639094

namespace A046363

/-- `∩[A100118(n+1), A268388(n+1)]` -/
def P11605596648931639094.Spec : Prop :=
  ∀ n, (P11605596648931639094.a n : ℤ) = A046363 (n + 1)

end A046363

/-!
# A046364: Odd composite numbers whose sum of prime factors is prime (counted with multiplicity).

The programs for A046364, the canonical program `A046364.P305014564740388166` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046364 has offset 0).

The definition of A046364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046364.P305014564740388166

`filter[A046363(n+1), A359372(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A046364

/-- `filter[A046363(n+1), A359372(#)]` -/
def P305014564740388166.Spec : Prop :=
  ∀ n, P305014564740388166.a n = A046364 n

theorem P305014564740388166.correct : P305014564740388166.Spec := by
  intro n
  simp only [A046364]

end A046364

/-! ## A046364.P8682340084122669043

`filter[A046363(n+1), A374474(#)]`
-/

namespace A046364.P8682340084122669043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A046364.P8682340084122669043

namespace A046364

/-- `filter[A046363(n+1), A374474(#)]` -/
def P8682340084122669043.Spec : Prop :=
  ∀ n, P8682340084122669043.a n = A046364 n

end A046364

/-! ## A046364.P13898968460187898926

`filter[A046363(n+1), A379952(#)]`
-/

namespace A046364.P13898968460187898926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A046364.P13898968460187898926

namespace A046364

/-- `filter[A046363(n+1), A379952(#)]` -/
def P13898968460187898926.Spec : Prop :=
  ∀ n, P13898968460187898926.a n = A046364 n

end A046364

/-! ## A046364.P5222458805169074224

`A046363(eq[0, val(A046363(n+1), 2)]+1)`
-/

namespace A046364.P5222458805169074224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046363 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046364.P5222458805169074224

namespace A046364

/-- `A046363(eq[0, val(A046363(n+1), 2)]+1)` -/
def P5222458805169074224.Spec : Prop :=
  ∀ n, P5222458805169074224.a n = A046364 n

end A046364

/-! ## A046364.P11501678183573347028

`∩[A046340(n+1), A046363(n+1)]`
-/

namespace A046364.P11501678183573347028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P11501678183573347028

namespace A046364

/-- `∩[A046340(n+1), A046363(n+1)]` -/
def P11501678183573347028.Spec : Prop :=
  ∀ n, (P11501678183573347028.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P9452729613306318033

`filter[A046363(n+1), A323158(#)]`
-/

namespace A046364.P9452729613306318033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A046364.P9452729613306318033

namespace A046364

/-- `filter[A046363(n+1), A323158(#)]` -/
def P9452729613306318033.Spec : Prop :=
  ∀ n, P9452729613306318033.a n = A046364 n

end A046364

/-! ## A046364.P4423486217955019649

`filter[A046363(n+1), A324908(#)]`
-/

namespace A046364.P4423486217955019649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A046364.P4423486217955019649

namespace A046364

/-- `filter[A046363(n+1), A324908(#)]` -/
def P4423486217955019649.Spec : Prop :=
  ∀ n, P4423486217955019649.a n = A046364 n

end A046364

/-! ## A046364.P14967871973029387978

`filter[A046363(n+1), A353558(#)]`
-/

namespace A046364.P14967871973029387978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046364.P14967871973029387978

namespace A046364

/-- `filter[A046363(n+1), A353558(#)]` -/
def P14967871973029387978.Spec : Prop :=
  ∀ n, P14967871973029387978.a n = A046364 n

end A046364

/-! ## A046364.P13115630323680582733

`∩[A046363(n+1), A333326(n+1)]`
-/

namespace A046364.P13115630323680582733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P13115630323680582733

namespace A046364

/-- `∩[A046363(n+1), A333326(n+1)]` -/
def P13115630323680582733.Spec : Prop :=
  ∀ n, (P13115630323680582733.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P14525239846542626921

`∩[A046340(n+1), A100118(n+1)]`
-/

namespace A046364.P14525239846542626921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P14525239846542626921

namespace A046364

/-- `∩[A046340(n+1), A100118(n+1)]` -/
def P14525239846542626921.Spec : Prop :=
  ∀ n, (P14525239846542626921.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P12868342355920523520

`∩[A100118(n+1), A333326(n+1)]`
-/

namespace A046364.P12868342355920523520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P12868342355920523520

namespace A046364

/-- `∩[A100118(n+1), A333326(n+1)]` -/
def P12868342355920523520.Spec : Prop :=
  ∀ n, (P12868342355920523520.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P4449853664288846428

`∩[A046363(n+1), A067019(n+1)]`
-/

namespace A046364.P4449853664288846428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P4449853664288846428

namespace A046364

/-- `∩[A046363(n+1), A067019(n+1)]` -/
def P4449853664288846428.Spec : Prop :=
  ∀ n, (P4449853664288846428.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P12713740116008808101

`∩[A046363(n+1), A175761(n+1)]`
-/

namespace A046364.P12713740116008808101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P12713740116008808101

namespace A046364

/-- `∩[A046363(n+1), A175761(n+1)]` -/
def P12713740116008808101.Spec : Prop :=
  ∀ n, (P12713740116008808101.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P4860998101487346882

`∩[A046363(n+1), A176847(n+1)]`
-/

namespace A046364.P4860998101487346882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P4860998101487346882

namespace A046364

/-- `∩[A046363(n+1), A176847(n+1)]` -/
def P4860998101487346882.Spec : Prop :=
  ∀ n, (P4860998101487346882.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P6048330249974891276

`∩[A046363(n+1), A359373(n+1)]`
-/

namespace A046364.P6048330249974891276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P6048330249974891276

namespace A046364

/-- `∩[A046363(n+1), A359373(n+1)]` -/
def P6048330249974891276.Spec : Prop :=
  ∀ n, (P6048330249974891276.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P10556164757446424570

`∩[A046363(n+1), A082686(n+1)]`
-/

namespace A046364.P10556164757446424570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P10556164757446424570

namespace A046364

/-- `∩[A046363(n+1), A082686(n+1)]` -/
def P10556164757446424570.Spec : Prop :=
  ∀ n, (P10556164757446424570.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P14673992095196748953

`∩[A082686(n+1), A100118(n+1)]`
-/

namespace A046364.P14673992095196748953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P14673992095196748953

namespace A046364

/-- `∩[A082686(n+1), A100118(n+1)]` -/
def P14673992095196748953.Spec : Prop :=
  ∀ n, (P14673992095196748953.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P8876265778365906740

`∩[A046363(n+1), A061346(n+1)]`
-/

namespace A046364.P8876265778365906740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P8876265778365906740

namespace A046364

/-- `∩[A046363(n+1), A061346(n+1)]` -/
def P8876265778365906740.Spec : Prop :=
  ∀ n, (P8876265778365906740.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P543087827880644163

`∩[A061346(n+1), A100118(n+1)]`
-/

namespace A046364.P543087827880644163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P543087827880644163

namespace A046364

/-- `∩[A061346(n+1), A100118(n+1)]` -/
def P543087827880644163.Spec : Prop :=
  ∀ n, (P543087827880644163.a n : ℤ) = A046364 n

end A046364

/-! ## A046364.P6424397695022721015

`∩[A046363(n+1), A226025(n+1)]`
-/

namespace A046364.P6424397695022721015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046364.P6424397695022721015

namespace A046364

/-- `∩[A046363(n+1), A226025(n+1)]` -/
def P6424397695022721015.Spec : Prop :=
  ∀ n, (P6424397695022721015.a n : ℤ) = A046364 n

end A046364

/-!
# A046365: Composite palindromes whose sum of prime factors is prime (counted with multiplicity).

The programs for A046365, there is no canonical definition to state claims against.
-/

/-! ## A046365.P7322463874207396120

`∩[A002113(n+1), A046363(n+1)]`
-/

namespace A046365.P7322463874207396120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046365.P7322463874207396120

/-! ## A046365.P12003690028427925246

`∩[A032350(n+1), A046363(n+1)]`
-/

namespace A046365.P12003690028427925246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046365.P12003690028427925246

/-! ## A046365.P18050338710818473945

`∩[A046363(n+1), A083158(n+1)]`
-/

namespace A046365.P18050338710818473945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046365.P18050338710818473945

/-! ## A046365.P18144966258753775370

`∩[A032350(n+1), A100118(n+1)]`
-/

namespace A046365.P18144966258753775370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046365.P18144966258753775370

/-! ## A046365.P10596794633451119232

`record[A047813(A046363(n+1))]`
-/

namespace A046365.P10596794633451119232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A046363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046365.P10596794633451119232

/-!
# A046366: Composite numbers divisible by the palindromic sum of their palindromic prime factors (counted with multiplicity).

The programs for A046366, there is no canonical definition to state claims against.
-/

/-! ## A046366.P10362277726704354728

`∩[A046346(n+1), A046355(n+1)]`
-/

namespace A046366.P10362277726704354728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046366.P10362277726704354728

/-! ## A046366.P2039254960082135210

`∩[A046355(n+1), A046358(n+1)]`
-/

namespace A046366.P2039254960082135210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046366.P2039254960082135210

/-! ## A046366.P13021030842302522298

`filter[A046355(n+1), A342460(#)]`
-/

namespace A046366.P13021030842302522298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A046366.P13021030842302522298

/-! ## A046366.P15065349961705925696

`∩[A036844(n+1), A046355(n+1)]`
-/

namespace A046366.P15065349961705925696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046366.P15065349961705925696

/-!
# A046367: Odd numbers divisible by the palindromic sum of its palindromic prime factors (counted with multiplicity).

The programs for A046367, there is no canonical definition to state claims against.
-/

/-! ## A046367.P14735155729783870659

`∩[A046347(n+1), A046355(n+1)]`
-/

namespace A046367.P14735155729783870659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046367.P14735155729783870659

/-! ## A046367.P1482219854686802015

`∩[A046347(n+1), A046366(n+1)]`
-/

namespace A046367.P1482219854686802015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046367.P1482219854686802015

/-! ## A046367.P9537960422601067301

`∩[A046359(n+1), A046366(n+1)]`
-/

namespace A046367.P9537960422601067301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046367.P9537960422601067301

/-! ## A046367.P6365312250819467852

`∩[A046359(n+1), A046356(n)]`
-/

namespace A046367.P6365312250819467852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046356 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046367.P6365312250819467852

/-! ## A046367.P1139959348338252857

`∩[A046366(n+1), A046356(n)]`
-/

namespace A046367.P1139959348338252857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046356 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046367.P1139959348338252857

/-!
# A046368: Products of two palindromic primes.

The programs for A046368, there is no canonical definition to state claims against.
-/

/-! ## A046368.P15170857946350383222

`∩[A033620(n+1), A264815(n+1)]`
-/

namespace A046368.P15170857946350383222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P15170857946350383222

/-! ## A046368.P10799077486431266375

`∩[A046349(n+1), A264815(n+1)]`
-/

namespace A046368.P10799077486431266375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P10799077486431266375

/-! ## A046368.P16843772141087820470

`∩[A115683(n+1), A264815(n+1)]`
-/

namespace A046368.P16843772141087820470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P16843772141087820470

/-! ## A046368.P9360174633577492749

`∩[A084981(n+1), A264815(n+1)]`
-/

namespace A046368.P9360174633577492749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P9360174633577492749

/-! ## A046368.P10417168901450780100

`∩[A001358(n+1), A033620(n+1)]`
-/

namespace A046368.P10417168901450780100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P10417168901450780100

/-! ## A046368.P3588378045084779998

`∩[A001358(n+1), A046349(n+1)]`
-/

namespace A046368.P3588378045084779998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P3588378045084779998

/-! ## A046368.P8203179157210246887

`∩[A001358(n+1), A084981(n+1)]`
-/

namespace A046368.P8203179157210246887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P8203179157210246887

/-! ## A046368.P6227912497066904602

`∩[A001358(n+1), A115683(n+1)]`
-/

namespace A046368.P6227912497066904602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P6227912497066904602

/-! ## A046368.P15125850931735259797

`filter[A033620(n+1), A064911(#)]`
-/

namespace A046368.P15125850931735259797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046368.P15125850931735259797

/-! ## A046368.P9537052814224817425

`filter[A046349(n+1), A064911(#)]`
-/

namespace A046368.P9537052814224817425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046368.P9537052814224817425

/-! ## A046368.P10858795101816082650

`filter[A046349(n+1), A101040(#)]`
-/

namespace A046368.P10858795101816082650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046368.P10858795101816082650

/-! ## A046368.P12609797336791810327

`filter[A084981(n+1), A064911(#)]`
-/

namespace A046368.P12609797336791810327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046368.P12609797336791810327

/-! ## A046368.P1035552588108207637

`filter[A115683(n+1), A064911(#)]`
-/

namespace A046368.P1035552588108207637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046368.P1035552588108207637

/-! ## A046368.P10927588256955797781

`filter[A115683(n+1), A101040(#)]`
-/

namespace A046368.P10927588256955797781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046368.P10927588256955797781

/-! ## A046368.P11530173516854349326

`record[A273943(A046369(n+1))]`
-/

namespace A046368.P11530173516854349326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046368.P11530173516854349326

/-! ## A046368.P2948972213802990773

`∩[A046349(n+1), A176540(n+1)]`
-/

namespace A046368.P2948972213802990773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P2948972213802990773

/-! ## A046368.P18017475535351864576

`∩[A115683(n+1), A176540(n+1)]`
-/

namespace A046368.P18017475535351864576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P18017475535351864576

/-! ## A046368.P9045190104194468555

`∩[A037143(n+1), A046349(n+1)]`
-/

namespace A046368.P9045190104194468555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P9045190104194468555

/-! ## A046368.P97066553756976035

`∩[A037143(n+1), A115683(n+1)]`
-/

namespace A046368.P97066553756976035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046368.P97066553756976035

/-!
# A046369: Numbers with exactly 3 prime factors (counted with multiplicity), all of which are palindromes.

The programs for A046369, there is no canonical definition to state claims against.
-/

/-! ## A046369.P9843614415238039576

`filter[A071280(n+1), A340369(#)]`
-/

namespace A046369.P9843614415238039576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A046369.P9843614415238039576

/-! ## A046369.P6906328940433830997

`∩[A014612(n+1), A033620(n+1)]`
-/

namespace A046369.P6906328940433830997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046369.P6906328940433830997

/-! ## A046369.P11319078065925986072

`∩[A014612(n+1), A046349(n+1)]`
-/

namespace A046369.P11319078065925986072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046369.P11319078065925986072

/-! ## A046369.P15462164655902295121

`∩[A046349(n+1), A298207(n+1)]`
-/

namespace A046369.P15462164655902295121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046369.P15462164655902295121

/-! ## A046369.P18088807416099553536

`filter[A033620(n+1), A101605(#)]`
-/

namespace A046369.P18088807416099553536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A046369.P18088807416099553536

/-! ## A046369.P9872942182009259503

`filter[A046349(n+1), A101605(#)]`
-/

namespace A046369.P9872942182009259503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A046369.P9872942182009259503

/-! ## A046369.P7098628030564194079

`filter[A071280(n+1), A101605(#)]`
-/

namespace A046369.P7098628030564194079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A046369.P7098628030564194079

/-! ## A046369.P15593605699646604315

`record[A117358(2*A046371(n+1))]`
-/

namespace A046369.P15593605699646604315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A046371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046369.P15593605699646604315

/-! ## A046369.P10525418540541237081

`record[A032742(A046370(n+1))]`
-/

namespace A046369.P10525418540541237081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046370 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046369.P10525418540541237081

/-!
# A046370: Numbers with exactly 4 palindromic prime factors (counted with multiplicity).

The programs for A046370, there is no canonical definition to state claims against.
-/

/-! ## A046370.P10479921589962860617

`filter[A033620(n+1), A101637(#)]`
-/

namespace A046370.P10479921589962860617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046370.P10479921589962860617

/-! ## A046370.P12358245686727650099

`filter[A046349(n+1), A101637(#)]`
-/

namespace A046370.P12358245686727650099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046370.P12358245686727650099

/-! ## A046370.P17058637637389965108

`∩[A014613(n+1), A033620(n+1)]`
-/

namespace A046370.P17058637637389965108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046370.P17058637637389965108

/-! ## A046370.P8448652499080243113

`∩[A014613(n+1), A046349(n+1)]`
-/

namespace A046370.P8448652499080243113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046370.P8448652499080243113

/-! ## A046370.P6892619893959670201

`∩[A033620(n+1), A000720(A124282(n+1))]`
-/

namespace A046370.P6892619893959670201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124282 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046370.P6892619893959670201

/-! ## A046370.P14295267800959847630

`record[A032742(A046371(n+1))]`
-/

namespace A046370.P14295267800959847630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046370.P14295267800959847630

/-!
# A046371: Numbers with exactly 5 palindromic prime factors (counted with multiplicity).

The programs for A046371, there is no canonical definition to state claims against.
-/

/-! ## A046371.P18011249232526038833

`∩[A014614(n+1), A033620(n+1)]`
-/

namespace A046371.P18011249232526038833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046371.P18011249232526038833

/-! ## A046371.P3785151653237249455

`∩[A014614(n+1), A046349(n+1)]`
-/

namespace A046371.P3785151653237249455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046371.P3785151653237249455

/-! ## A046371.P349969948440996303

`record[A052126(11*A014614(n+1))]`
-/

namespace A046371.P349969948440996303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (11 * A014614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046371.P349969948440996303

/-!
# A046372: Odd numbers with exactly 2 palindromic prime factors (counted with multiplicity).

The programs for A046372, there is no canonical definition to state claims against.
-/

/-! ## A046372.P1422507464505781940

`A046368(eq[1, and(1, A046368(n+1))]+1)`
-/

namespace A046372.P1422507464505781940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046368 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046372.P1422507464505781940

/-! ## A046372.P8709932890179736645

`∩[A046350(n+1), A046368(n+1)]`
-/

namespace A046372.P8709932890179736645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046372.P8709932890179736645

/-! ## A046372.P104990384327653965

`∩[A046350(n+1), A264815(n+1)]`
-/

namespace A046372.P104990384327653965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046372.P104990384327653965

/-! ## A046372.P13719464867446244058

`filter[A046368(n+1), A359595(#)]`
-/

namespace A046372.P13719464867446244058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A046372.P13719464867446244058

/-! ## A046372.P5888277857105160637

`filter[A046368(n+1), A359770(#)]`
-/

namespace A046372.P5888277857105160637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A046372.P5888277857105160637

/-! ## A046372.P13658877899573195726

`filter[A046368(n+1), A359774(#)]`
-/

namespace A046372.P13658877899573195726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359774 (f1 j).toNat = 1) n)

end

end A046372.P13658877899573195726

/-! ## A046372.P14987176888386345346

`filter[A046350(n+1), A359828(#)]`
-/

namespace A046372.P14987176888386345346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A046372.P14987176888386345346

/-! ## A046372.P17707872187799375521

`filter[A046368(n+1), A373157(#)]`
-/

namespace A046372.P17707872187799375521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A046372.P17707872187799375521

/-! ## A046372.P14231501461235970918

`filter[A046368(n+1), A374134(#)]`
-/

namespace A046372.P14231501461235970918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A046372.P14231501461235970918

/-! ## A046372.P18096082482520623399

`filter[A046368(n+2), A356163(#)]`
-/

namespace A046372.P18096082482520623399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A046372.P18096082482520623399

/-! ## A046372.P2672328927861395885

`filter[A046368(n+2), A358680(#)]`
-/

namespace A046372.P2672328927861395885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A046372.P2672328927861395885

/-! ## A046372.P8430457367438835298

`filter[A046350(n+1), A064911(#)]`
-/

namespace A046372.P8430457367438835298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046372.P8430457367438835298

/-! ## A046372.P13444983519176460234

`filter[A046350(n+1), A101040(#)]`
-/

namespace A046372.P13444983519176460234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046372.P13444983519176460234

/-! ## A046372.P12371196112035589961

`filter[A033620(n+1), A353480(#)]`
-/

namespace A046372.P12371196112035589961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A046372.P12371196112035589961

/-! ## A046372.P180933285958746269

`filter[A046349(n+1), A353480(#)]`
-/

namespace A046372.P180933285958746269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A046372.P180933285958746269

/-! ## A046372.P5882620672196201059

`filter[A046350(n+1), A353480(#)]`
-/

namespace A046372.P5882620672196201059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A046372.P5882620672196201059

/-! ## A046372.P5514657003825120057

`filter[A046368(n+1), A353480(#)]`
-/

namespace A046372.P5514657003825120057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A046372.P5514657003825120057

/-! ## A046372.P7303037847117604857

`filter[A046368(n+1), A353557(#)]`
-/

namespace A046372.P7303037847117604857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A046372.P7303037847117604857

/-! ## A046372.P16368055247275026805

`filter[A046368(n+1), A369001(#)]`
-/

namespace A046372.P16368055247275026805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A046372.P16368055247275026805

/-!
# A046373: Numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd palindromic primes (odd terms from A002385).

The programs for A046373, there is no canonical definition to state claims against.
-/

/-! ## A046373.P16003269050837385802

`A046369(eq[1, A046369(n+4)%2]+4)`
-/

namespace A046373.P16003269050837385802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046369 (n + 4)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A046373.P16003269050837385802

/-! ## A046373.P164697300483476302

`∩[A046350(n+1), A046369(n+1)]`
-/

namespace A046373.P164697300483476302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P164697300483476302

/-! ## A046373.P7036659368454584156

`filter[A046350(n+1), A369058(#)]`
-/

namespace A046373.P7036659368454584156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A046373.P7036659368454584156

/-! ## A046373.P2272140733114912957

`filter[A046369(n+1), A369058(#)]`
-/

namespace A046373.P2272140733114912957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A046373.P2272140733114912957

/-! ## A046373.P7585329316834661601

`filter[A046369(n+1), A373141(#)]`
-/

namespace A046373.P7585329316834661601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A046373.P7585329316834661601

/-! ## A046373.P6351962665423986949

`filter[A046369(n+1), A379952(#)]`
-/

namespace A046373.P6351962665423986949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A046373.P6351962665423986949

/-! ## A046373.P13063294176941988260

`filter[A046369(n+2), A373157(#)]`
-/

namespace A046373.P13063294176941988260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A046373.P13063294176941988260

/-! ## A046373.P14140900647683384684

`∩[A033620(n+1), A046316(n+1)]`
-/

namespace A046373.P14140900647683384684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P14140900647683384684

/-! ## A046373.P16204877063580306965

`∩[A046316(n+1), A046349(n+1)]`
-/

namespace A046373.P16204877063580306965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P16204877063580306965

/-! ## A046373.P2482888239649882020

`∩[A046316(n+1), A046350(n+1)]`
-/

namespace A046373.P2482888239649882020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P2482888239649882020

/-! ## A046373.P7123466732335138363

`∩[A046316(n+1), A046369(n+1)]`
-/

namespace A046373.P7123466732335138363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P7123466732335138363

/-! ## A046373.P7190386446357151260

`filter[A046369(n+1), A323158(#)]`
-/

namespace A046373.P7190386446357151260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A046373.P7190386446357151260

/-! ## A046373.P15843003360857000786

`filter[A046369(n+1), A324908(#)]`
-/

namespace A046373.P15843003360857000786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A046373.P15843003360857000786

/-! ## A046373.P4012377831990085667

`filter[A046369(n+1), A353558(#)]`
-/

namespace A046373.P4012377831990085667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046373.P4012377831990085667

/-! ## A046373.P17466444299802387154

`∩[A046340(n+1), A046369(n+1)]`
-/

namespace A046373.P17466444299802387154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P17466444299802387154

/-! ## A046373.P15046257938778440722

`∩[A046369(n+1), A067019(n+1)]`
-/

namespace A046373.P15046257938778440722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P15046257938778440722

/-! ## A046373.P13740444326742752732

`∩[A014612(n+1), A046350(n+1)]`
-/

namespace A046373.P13740444326742752732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P13740444326742752732

/-! ## A046373.P12994709344881536730

`record[A046374(n+1)/A020639(A046374(n+1))]`
-/

namespace A046373.P12994709344881536730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046374 (n + 1) : ℚ) / (A020639 (A046374 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046373.P12994709344881536730

/-! ## A046373.P10094732244542025243

`∩[A046369(n+1), A176847(n+1)]`
-/

namespace A046373.P10094732244542025243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P10094732244542025243

/-! ## A046373.P13772035013844380297

`∩[A046350(n+1), A298207(n+1)]`
-/

namespace A046373.P13772035013844380297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046373.P13772035013844380297

/-!
# A046374: Odd numbers with exactly 4 palindromic prime factors (counted with multiplicity).

The programs for A046374, there is no canonical definition to state claims against.
-/

/-! ## A046374.P7216207355087532047

`∩[A046350(n+1), A046370(n+1)]`
-/

namespace A046374.P7216207355087532047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P7216207355087532047

/-! ## A046374.P15968290400487372646

`∩[A033620(n+1), A046317(n+1)]`
-/

namespace A046374.P15968290400487372646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P15968290400487372646

/-! ## A046374.P10646682515999447082

`∩[A046317(n+1), A046349(n+1)]`
-/

namespace A046374.P10646682515999447082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P10646682515999447082

/-! ## A046374.P7802598833228324066

`∩[A046317(n+1), A046350(n+1)]`
-/

namespace A046374.P7802598833228324066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P7802598833228324066

/-! ## A046374.P822812646632363820

`∩[A046317(n+1), A046370(n+1)]`
-/

namespace A046374.P822812646632363820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P822812646632363820

/-! ## A046374.P1806516755175760255

`filter[A046370(n+1), A359770(#)]`
-/

namespace A046374.P1806516755175760255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A046374.P1806516755175760255

/-! ## A046374.P10546643474642889628

`filter[A046370(n+2), A373851(#)]`
-/

namespace A046374.P10546643474642889628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A046374.P10546643474642889628

/-! ## A046374.P7650101392115393676

`filter[A046350(n+1), A101637(#)]`
-/

namespace A046374.P7650101392115393676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046374.P7650101392115393676

/-! ## A046374.P13490400601736588083

`filter[A046370(n+1), A353557(#)]`
-/

namespace A046374.P13490400601736588083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A046374.P13490400601736588083

/-! ## A046374.P5455035377838198713

`filter[A046370(n+2), A369001(#)]`
-/

namespace A046374.P5455035377838198713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A046374.P5455035377838198713

/-! ## A046374.P14358115395563678502

`∩[A014613(n+1), A046350(n+1)]`
-/

namespace A046374.P14358115395563678502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P14358115395563678502

/-! ## A046374.P4025445612662286830

`∩[A046370(n+1), A274720(n+1)]`
-/

namespace A046374.P4025445612662286830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P4025445612662286830

/-! ## A046374.P3603217055248705775

`∩[A046370(n+1), A139392(n+1)]`
-/

namespace A046374.P3603217055248705775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P3603217055248705775

/-! ## A046374.P11188209653206478900

`∩[A046370(n+1), A333326(n+1)]`
-/

namespace A046374.P11188209653206478900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046374.P11188209653206478900

/-! ## A046374.P7151727937132583211

`record[A046375(n+1)/A020639(A046375(n+1))]`
-/

namespace A046374.P7151727937132583211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046375 (n + 1) : ℚ) / (A020639 (A046375 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046374.P7151727937132583211

/-!
# A046375: Odd numbers with exactly 5 palindromic prime factors (counted with multiplicity).

The programs for A046375, there is no canonical definition to state claims against.
-/

/-! ## A046375.P14513813079596053283

`∩[A046350(n+1), A046371(n+1)]`
-/

namespace A046375.P14513813079596053283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046375.P14513813079596053283

/-! ## A046375.P15832194749979913686

`∩[A046318(n+1), A046349(n+1)]`
-/

namespace A046375.P15832194749979913686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046375.P15832194749979913686

/-! ## A046375.P15316219396168710241

`∩[A046318(n+1), A046350(n+1)]`
-/

namespace A046375.P15316219396168710241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046375.P15316219396168710241

/-! ## A046375.P12976051641696121423

`∩[A046318(n+1), A046371(n+1)]`
-/

namespace A046375.P12976051641696121423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046375.P12976051641696121423

/-! ## A046375.P745357527036027044

`∩[A046371(n+1), A053850(n+1)]`
-/

namespace A046375.P745357527036027044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046375.P745357527036027044

/-! ## A046375.P5301994292323106899

`filter[A046371(n+1), A379952(#)]`
-/

namespace A046375.P5301994292323106899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A046375.P5301994292323106899

/-! ## A046375.P6943009932054698067

`∩[A014614(n+1), A046350(n+1)]`
-/

namespace A046375.P6943009932054698067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046375.P6943009932054698067

/-! ## A046375.P6552348986178221431

`filter[A046371(n+1), A323158(#)]`
-/

namespace A046375.P6552348986178221431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A046375.P6552348986178221431

/-! ## A046375.P2507242572353864691

`filter[A046371(n+1), A324908(#)]`
-/

namespace A046375.P2507242572353864691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A046375.P2507242572353864691

/-! ## A046375.P11419081047431617878

`filter[A046371(n+1), A353558(#)]`
-/

namespace A046375.P11419081047431617878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A046375.P11419081047431617878

/-! ## A046375.P10099002193461575436

`filter[A046371(n+1), A353569(#)]`
-/

namespace A046375.P10099002193461575436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A046375.P10099002193461575436

/-!
# A046376: Palindromes with exactly 2 palindromic prime factors (counted with multiplicity), and no other prime factors.

The programs for A046376, there is no canonical definition to state claims against.
-/

/-! ## A046376.P3409965072411931161

`∩[A046328(n+1), A046351(n+1)]`
-/

namespace A046376.P3409965072411931161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P3409965072411931161

/-! ## A046376.P10749277785342266846

`∩[A046328(n+1), A046368(n+1)]`
-/

namespace A046376.P10749277785342266846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P10749277785342266846

/-! ## A046376.P534060451468682671

`∩[A046351(n+1), A046368(n+1)]`
-/

namespace A046376.P534060451468682671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P534060451468682671

/-! ## A046376.P4106091211304523381

`∩[A046328(n+1), A062687(n+1)]`
-/

namespace A046376.P4106091211304523381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P4106091211304523381

/-! ## A046376.P1182814967695791468

`∩[A046368(n+1), A062687(n+1)]`
-/

namespace A046376.P1182814967695791468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P1182814967695791468

/-! ## A046376.P5497308862215424595

`∩[A046328(n+1), A078337(n+1)]`
-/

namespace A046376.P5497308862215424595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P5497308862215424595

/-! ## A046376.P8800015351544926113

`∩[A046368(n+1), A078337(n+1)]`
-/

namespace A046376.P8800015351544926113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P8800015351544926113

/-! ## A046376.P15400486214841853484

`∩[A046368(n+1), A080716(n+1)]`
-/

namespace A046376.P15400486214841853484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P15400486214841853484

/-! ## A046376.P5563393320963528984

`∩[A046338(n+1), A046368(n+1)]`
-/

namespace A046376.P5563393320963528984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P5563393320963528984

/-! ## A046376.P8157259840605607582

`∩[A046368(n+1), A394545(n+1)]`
-/

namespace A046376.P8157259840605607582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P8157259840605607582

/-! ## A046376.P10461241658470309353

`∩[A046368(n+1), A324988(n+1)]`
-/

namespace A046376.P10461241658470309353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P10461241658470309353

/-! ## A046376.P6721995487665801127

`∩[A002113(n+1), A046368(n+1)]`
-/

namespace A046376.P6721995487665801127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P6721995487665801127

/-! ## A046376.P17321157840601883500

`∩[A046351(n+1), A239307(n+1)]`
-/

namespace A046376.P17321157840601883500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P17321157840601883500

/-! ## A046376.P9259461821062202249

`∩[A046368(n+1), A239307(n+1)]`
-/

namespace A046376.P9259461821062202249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P9259461821062202249

/-! ## A046376.P9883553353585858289

`∩[A062687(n+1), A239307(n+1)]`
-/

namespace A046376.P9883553353585858289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P9883553353585858289

/-! ## A046376.P4843036059884431701

`∩[A078337(n+1), A239307(n+1)]`
-/

namespace A046376.P4843036059884431701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P4843036059884431701

/-! ## A046376.P16840928460164595925

`∩[A239307(n+1), A394545(n+1)]`
-/

namespace A046376.P16840928460164595925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P16840928460164595925

/-! ## A046376.P7065700081028515950

`∩[A035135(n+1), A046368(n+1)]`
-/

namespace A046376.P7065700081028515950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P7065700081028515950

/-! ## A046376.P15040554980166734724

`∩[A032350(n+1), A046368(n+1)]`
-/

namespace A046376.P15040554980166734724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P15040554980166734724

/-! ## A046376.P2126389655758080282

`∩[A046368(n+1), A083158(n+1)]`
-/

namespace A046376.P2126389655758080282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046376.P2126389655758080282

/-!
# A046377: Palindromes with exactly 3 palindromic prime factors (counted with multiplicity).

The programs for A046377, there is no canonical definition to state claims against.
-/

/-! ## A046377.P3220108503641208500

`∩[A046329(n+1), A046351(n+1)]`
-/

namespace A046377.P3220108503641208500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P3220108503641208500

/-! ## A046377.P15217482540787355544

`∩[A046329(n+1), A078895(n+1)]`
-/

namespace A046377.P15217482540787355544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P15217482540787355544

/-! ## A046377.P630582354935457800

`∩[A046329(n+1), A046369(n+1)]`
-/

namespace A046377.P630582354935457800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P630582354935457800

/-! ## A046377.P9762095228080785607

`∩[A046341(n+1), A046369(n+1)]`
-/

namespace A046377.P9762095228080785607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P9762095228080785607

/-! ## A046377.P5686787393688002002

`∩[A046351(n+1), A046369(n+1)]`
-/

namespace A046377.P5686787393688002002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P5686787393688002002

/-! ## A046377.P14370390308065274080

`∩[A046369(n+1), A068062(n+1)]`
-/

namespace A046377.P14370390308065274080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P14370390308065274080

/-! ## A046377.P12789202352793957229

`∩[A046369(n+1), A078895(n+1)]`
-/

namespace A046377.P12789202352793957229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P12789202352793957229

/-! ## A046377.P13308747459541899844

`∩[A046369(n+1), A324988(n+1)]`
-/

namespace A046377.P13308747459541899844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P13308747459541899844

/-! ## A046377.P11850062588317707091

`∩[A032350(n+1), A046369(n+1)]`
-/

namespace A046377.P11850062588317707091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P11850062588317707091

/-! ## A046377.P6468554829486039050

`∩[A046369(n+1), A325322(n+1)]`
-/

namespace A046377.P6468554829486039050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046377.P6468554829486039050

/-!
# A046378: Palindromes with exactly 4 palindromic prime factors (counted with multiplicity).

The programs for A046378, there is no canonical definition to state claims against.
-/

/-! ## A046378.P1561310471798640988

`∩[A046330(n+1), A046351(n+1)]`
-/

namespace A046378.P1561310471798640988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046378.P1561310471798640988

/-! ## A046378.P5334702645647304773

`∩[A002113(n+1), A046370(n+1)]`
-/

namespace A046378.P5334702645647304773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046378.P5334702645647304773

/-! ## A046378.P5051037233624459226

`∩[A046330(n+1), A046370(n+1)]`
-/

namespace A046378.P5051037233624459226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046378.P5051037233624459226

/-! ## A046378.P11794628913399652516

`∩[A046338(n+1), A046370(n+1)]`
-/

namespace A046378.P11794628913399652516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046378.P11794628913399652516

/-! ## A046378.P16471509436892955260

`∩[A046351(n+1), A046370(n+1)]`
-/

namespace A046378.P16471509436892955260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046378.P16471509436892955260

/-!
# A046379: Palindromes with exactly 5 palindromic prime factors (counted with multiplicity).

The programs for A046379, there is no canonical definition to state claims against.
-/

/-! ## A046379.P2292393876064458189

`∩[A046331(n+1), A046351(n+1)]`
-/

namespace A046379.P2292393876064458189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046379.P2292393876064458189

/-! ## A046379.P474382126545762651

`∩[A002113(n+1), A046371(n+1)]`
-/

namespace A046379.P474382126545762651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046379.P474382126545762651

/-! ## A046379.P12851104747243634824

`∩[A046341(n+1), A046371(n+1)]`
-/

namespace A046379.P12851104747243634824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046379.P12851104747243634824

/-!
# A046380: Palindromes with exactly 6 palindromic prime factors (counted with multiplicity).

The programs for A046380, there is no canonical definition to state claims against.
-/

/-! ## A046380.P1454781505926349974

`∩[A046332(n+1), A046351(n+1)]`
-/

namespace A046380.P1454781505926349974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046380.P1454781505926349974

/-!
# A046382: Palindromes with exactly 8 prime factors (counted with multiplicity) each of which is a palindrome.

The programs for A046382, there is no canonical definition to state claims against.
-/

/-! ## A046382.P16072493113136579741

`∩[A046334(n+1), A046351(n+1)]`
-/

namespace A046382.P16072493113136579741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046382.P16072493113136579741

/-!
# A046383: Palindromes with exactly 9 palindromic prime factors (counted with multiplicity).

The programs for A046383, there is no canonical definition to state claims against.
-/

/-! ## A046383.P5004915330942812105

`∩[A046335(n+1), A046351(n+1)]`
-/

namespace A046383.P5004915330942812105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046383.P5004915330942812105

/-!
# A046384: Palindromes with exactly 10 palindromic prime factors (counted with multiplicity).

The programs for A046384, there is no canonical definition to state claims against.
-/

/-! ## A046384.P13233823973306692710

`∩[A046336(n+1), A046351(n+1)]`
-/

namespace A046384.P13233823973306692710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046384.P13233823973306692710

/-! ## A046384.P12767413580722977969

`∩[A046314(n+1), A046351(n+1)]`
-/

namespace A046384.P12767413580722977969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046384.P12767413580722977969

/-!
# A046386: Products of exactly four distinct primes.

The programs for A046386, the canonical program `A046386.P16871154902910785853` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046386 has offset 1).

The definition of A046386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6527 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046386.P11642598361798443091

`sqrt(A190377(n+1))`
-/

namespace A046386.P11642598361798443091
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A190377 (n + 1) : ℝ)

end

end A046386.P11642598361798443091

namespace A046386

/-- `sqrt(A190377(n+1))` -/
def P11642598361798443091.Spec : Prop :=
  ∀ n, P11642598361798443091.a n = (A046386 (n + 1) : ℝ)

end A046386

/-! ## A046386.P14243627514710828193

`∪[A378717(n+1), A379762(n+1)]`
-/

namespace A046386.P14243627514710828193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046386.P14243627514710828193

namespace A046386

/-- `∪[A378717(n+1), A379762(n+1)]` -/
def P14243627514710828193.Spec : Prop :=
  ∀ n, (P14243627514710828193.a n : ℤ) = A046386 (n + 1)

end A046386

/-! ## A046386.P9417983043722055949

`filter[A350373(n+1), A008966(#)]`
-/

namespace A046386.P9417983043722055949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046386.P9417983043722055949

namespace A046386

/-- `filter[A350373(n+1), A008966(#)]` -/
def P9417983043722055949.Spec : Prop :=
  ∀ n, P9417983043722055949.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P12256889279647908606

`filter[A350373(n+1), A354819(#)]`
-/

namespace A046386.P12256889279647908606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046386.P12256889279647908606

namespace A046386

/-- `filter[A350373(n+1), A354819(#)]` -/
def P12256889279647908606.Spec : Prop :=
  ∀ n, P12256889279647908606.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P6517133165357438839

`filter[A030634(n+1), A008966(#)]`
-/

namespace A046386.P6517133165357438839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046386.P6517133165357438839

namespace A046386

/-- `filter[A030634(n+1), A008966(#)]` -/
def P6517133165357438839.Spec : Prop :=
  ∀ n, P6517133165357438839.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P16871154902910785853

`filter[A030634(n+1), A212793(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046386

/-- `filter[A030634(n+1), A212793(#)]` -/
def P16871154902910785853.Spec : Prop :=
  ∀ n, P16871154902910785853.a n = A046386 (n + 1)

theorem P16871154902910785853.correct : P16871154902910785853.Spec := by
  intro n
  simp only [A046386, Nat.add_sub_cancel]

end A046386

/-! ## A046386.P4856239612739032112

`filter[A030634(n+1), A354819(#)]`
-/

namespace A046386.P4856239612739032112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046386.P4856239612739032112

namespace A046386

/-- `filter[A030634(n+1), A354819(#)]` -/
def P4856239612739032112.Spec : Prop :=
  ∀ n, P4856239612739032112.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P10694391292273819856

`filter[A030634(n+1), A355823(#)]`
-/

namespace A046386.P10694391292273819856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A046386.P10694391292273819856

namespace A046386

/-- `filter[A030634(n+1), A355823(#)]` -/
def P10694391292273819856.Spec : Prop :=
  ∀ n, P10694391292273819856.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P5925941716871853106

`filter[A030634(n+1), A359471(#)]`
-/

namespace A046386.P5925941716871853106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A046386.P5925941716871853106

namespace A046386

/-- `filter[A030634(n+1), A359471(#)]` -/
def P5925941716871853106.Spec : Prop :=
  ∀ n, P5925941716871853106.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P15817040097030118638

`filter[A030634(n+1), A359764(#)]`
-/

namespace A046386.P15817040097030118638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A046386.P15817040097030118638

namespace A046386

/-- `filter[A030634(n+1), A359764(#)]` -/
def P15817040097030118638.Spec : Prop :=
  ∀ n, P15817040097030118638.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P4429414223863223691

`∩[A030634(n+1), A350373(n+1)]`
-/

namespace A046386.P4429414223863223691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046386.P4429414223863223691

namespace A046386

/-- `∩[A030634(n+1), A350373(n+1)]` -/
def P4429414223863223691.Spec : Prop :=
  ∀ n, (P4429414223863223691.a n : ℤ) = A046386 (n + 1)

end A046386

/-! ## A046386.P8479888446528810068

`record[A007947(A033993(n+1))]`
-/

namespace A046386.P8479888446528810068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033993 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046386.P8479888446528810068

namespace A046386

/-- `record[A007947(A033993(n+1))]` -/
def P8479888446528810068.Spec : Prop :=
  ∀ n, P8479888446528810068.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P9950907661331129760

`filter[A033993(n+1), A008966(#)]`
-/

namespace A046386.P9950907661331129760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046386.P9950907661331129760

namespace A046386

/-- `filter[A033993(n+1), A008966(#)]` -/
def P9950907661331129760.Spec : Prop :=
  ∀ n, P9950907661331129760.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P10797180161093183346

`filter[A033993(n+1), A354819(#)]`
-/

namespace A046386.P10797180161093183346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046386.P10797180161093183346

namespace A046386

/-- `filter[A033993(n+1), A354819(#)]` -/
def P10797180161093183346.Spec : Prop :=
  ∀ n, P10797180161093183346.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P15434300754298399179

`∩[A030634(n+1), A033993(n+1)]`
-/

namespace A046386.P15434300754298399179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046386.P15434300754298399179

namespace A046386

/-- `∩[A030634(n+1), A033993(n+1)]` -/
def P15434300754298399179.Spec : Prop :=
  ∀ n, (P15434300754298399179.a n : ℤ) = A046386 (n + 1)

end A046386

/-! ## A046386.P6617664158817540621

`∩[A033993(n+1), A350373(n+1)]`
-/

namespace A046386.P6617664158817540621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046386.P6617664158817540621

namespace A046386

/-- `∩[A033993(n+1), A350373(n+1)]` -/
def P6617664158817540621.Spec : Prop :=
  ∀ n, (P6617664158817540621.a n : ℤ) = A046386 (n + 1)

end A046386

/-! ## A046386.P2702996628238325502

`filter[A030634(n+1), A101637(#)]`
-/

namespace A046386.P2702996628238325502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046386.P2702996628238325502

namespace A046386

/-- `filter[A030634(n+1), A101637(#)]` -/
def P2702996628238325502.Spec : Prop :=
  ∀ n, P2702996628238325502.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P5440979081903788797

`filter[A033993(n+1), A101637(#)]`
-/

namespace A046386.P5440979081903788797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A046386.P5440979081903788797

namespace A046386

/-- `filter[A033993(n+1), A101637(#)]` -/
def P5440979081903788797.Spec : Prop :=
  ∀ n, P5440979081903788797.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P8311185361240677069

`filter[A030634(n+1), A323154(#)]`
-/

namespace A046386.P8311185361240677069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A046386.P8311185361240677069

namespace A046386

/-- `filter[A030634(n+1), A323154(#)]` -/
def P8311185361240677069.Spec : Prop :=
  ∀ n, P8311185361240677069.a n = A046386 (n + 1)

end A046386

/-! ## A046386.P13906567061839666499

`filter[A030634(n+1), A353519(#)]`
-/

namespace A046386.P13906567061839666499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A046386.P13906567061839666499

namespace A046386

/-- `filter[A030634(n+1), A353519(#)]` -/
def P13906567061839666499.Spec : Prop :=
  ∀ n, P13906567061839666499.a n = A046386 (n + 1)

end A046386

/-!
# A046387: Products of exactly 5 distinct primes.

The programs for A046387, there is no canonical definition to state claims against.
-/

/-! ## A046387.P1746647474598671970

`∩[A051270(n+1), A175742(n+1)]`
-/

namespace A046387.P1746647474598671970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046387.P1746647474598671970

/-! ## A046387.P11351095307626175311

`∩[A175742(A020705(n)), A051270(n+1)]`
-/

namespace A046387.P11351095307626175311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (A020705 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046387.P11351095307626175311

/-! ## A046387.P3406848072588966044

`record[A007947(A051270(n+1))]`
-/

namespace A046387.P3406848072588966044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A051270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046387.P3406848072588966044

/-! ## A046387.P8503016234900755458

`filter[A051270(n+1), A008966(#)]`
-/

namespace A046387.P8503016234900755458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046387.P8503016234900755458

/-! ## A046387.P12908648346657681685

`filter[A051270(n+1), A354353(#)]`
-/

namespace A046387.P12908648346657681685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A046387.P12908648346657681685

/-! ## A046387.P15450398506220120086

`filter[A051270(n+1), A354819(#)]`
-/

namespace A046387.P15450398506220120086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046387.P15450398506220120086

/-! ## A046387.P14820928148857955235

`filter[A051270(n+1), A380469(#)]`
-/

namespace A046387.P14820928148857955235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A046387.P14820928148857955235

/-! ## A046387.P7130862326920889664

`filter[A051270(n+1), A252233(#)]`
-/

namespace A046387.P7130862326920889664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A046387.P7130862326920889664

/-! ## A046387.P12819070398258507591

`filter[A051270(n+1), A323154(#)]`
-/

namespace A046387.P12819070398258507591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A046387.P12819070398258507591

/-! ## A046387.P1165353816230512639

`∩[A051270(n+1), A287483(n)]`
-/

namespace A046387.P1165353816230512639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046387.P1165353816230512639

/-! ## A046387.P10977931763226535779

`∩[A175742(n+1), A287483(n)]`
-/

namespace A046387.P10977931763226535779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287483 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046387.P10977931763226535779

/-!
# A046388: Odd numbers of the form p*q where p and q are distinct primes.

The programs for A046388, the canonical program `A046388.P6384057997627062730` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046388 has offset 1).

The definition of A046388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046388.P7587529096446356482

`2*eq[4, A305973(n+1)]+1`
-/

namespace A046388.P7587529096446356482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046388.P7587529096446356482

namespace A046388

/-- `2*eq[4, A305973(n+1)]+1` -/
def P7587529096446356482.Spec : Prop :=
  ∀ n, (P7587529096446356482.a n : ℤ) = A046388 (n + 1)

end A046388

/-! ## A046388.P4858205026332558244

`2*eq[6, A278223(n+1)]+1`
-/

namespace A046388.P4858205026332558244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046388.P4858205026332558244

namespace A046388

/-- `2*eq[6, A278223(n+1)]+1` -/
def P4858205026332558244.Spec : Prop :=
  ∀ n, (P4858205026332558244.a n : ℤ) = A046388 (n + 1)

end A046388

/-! ## A046388.P10228891183080747037

`filter[A385350(n+1), A064911(#)]`
-/

namespace A046388.P10228891183080747037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046388.P10228891183080747037

namespace A046388

/-- `filter[A385350(n+1), A064911(#)]` -/
def P10228891183080747037.Spec : Prop :=
  ∀ n, P10228891183080747037.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P4156394574814437955

`filter[A385350(n+1), A101040(#)]`
-/

namespace A046388.P4156394574814437955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046388.P4156394574814437955

namespace A046388

/-- `filter[A385350(n+1), A101040(#)]` -/
def P4156394574814437955.Spec : Prop :=
  ∀ n, P4156394574814437955.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P10579543086210179489

`filter[A385350(n+1), A280710(#)]`
-/

namespace A046388.P10579543086210179489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046388.P10579543086210179489

namespace A046388

/-- `filter[A385350(n+1), A280710(#)]` -/
def P10579543086210179489.Spec : Prop :=
  ∀ n, P10579543086210179489.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P6384057997627062730

`filter[A385350(n+1), A340370(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A046388

/-- `filter[A385350(n+1), A340370(#)]` -/
def P6384057997627062730.Spec : Prop :=
  ∀ n, P6384057997627062730.a n = A046388 (n + 1)

theorem P6384057997627062730.correct : P6384057997627062730.Spec := by
  intro n
  simp only [A046388, Nat.add_sub_cancel]

end A046388

/-! ## A046388.P16692076253908473344

`filter[A385350(n+1), A353471(#)]`
-/

namespace A046388.P16692076253908473344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A046388.P16692076253908473344

namespace A046388

/-- `filter[A385350(n+1), A353471(#)]` -/
def P16692076253908473344.Spec : Prop :=
  ∀ n, P16692076253908473344.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P8778806095431507622

`filter[A385350(n+1), A353480(#)]`
-/

namespace A046388.P8778806095431507622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A046388.P8778806095431507622

namespace A046388

/-- `filter[A385350(n+1), A353480(#)]` -/
def P8778806095431507622.Spec : Prop :=
  ∀ n, P8778806095431507622.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P4213173173303565200

`filter[A385350(n+1), A353481(#)]`
-/

namespace A046388.P4213173173303565200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A046388.P4213173173303565200

namespace A046388

/-- `filter[A385350(n+1), A353481(#)]` -/
def P4213173173303565200.Spec : Prop :=
  ∀ n, P4213173173303565200.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P4734794985767422155

`filter[A385350(n+1), A353669(#)]`
-/

namespace A046388.P4734794985767422155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A046388.P4734794985767422155

namespace A046388

/-- `filter[A385350(n+1), A353669(#)]` -/
def P4734794985767422155.Spec : Prop :=
  ∀ n, P4734794985767422155.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P13386889391017801111

`filter[A385350(n+1), A353676(#)]`
-/

namespace A046388.P13386889391017801111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A046388.P13386889391017801111

namespace A046388

/-- `filter[A385350(n+1), A353676(#)]` -/
def P13386889391017801111.Spec : Prop :=
  ∀ n, P13386889391017801111.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P6828231399687345748

`filter[A385350(n+1), A354353(#)]`
-/

namespace A046388.P6828231399687345748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A046388.P6828231399687345748

namespace A046388

/-- `filter[A385350(n+1), A354353(#)]` -/
def P6828231399687345748.Spec : Prop :=
  ∀ n, P6828231399687345748.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P6765170040080344844

`filter[A385350(n+1), A374128(#)]`
-/

namespace A046388.P6765170040080344844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A046388.P6765170040080344844

namespace A046388

/-- `filter[A385350(n+1), A374128(#)]` -/
def P6765170040080344844.Spec : Prop :=
  ∀ n, P6765170040080344844.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P4696226749018129878

`filter[A385350(n+1), A380469(#)]`
-/

namespace A046388.P4696226749018129878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A046388.P4696226749018129878

namespace A046388

/-- `filter[A385350(n+1), A380469(#)]` -/
def P4696226749018129878.Spec : Prop :=
  ∀ n, P4696226749018129878.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P16173384258971294600

`filter[A385350(n+2), A008966(#)]`
-/

namespace A046388.P16173384258971294600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046388.P16173384258971294600

namespace A046388

/-- `filter[A385350(n+2), A008966(#)]` -/
def P16173384258971294600.Spec : Prop :=
  ∀ n, P16173384258971294600.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P7958778516603098896

`filter[A385350(n+2), A065043(#)]`
-/

namespace A046388.P7958778516603098896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A046388.P7958778516603098896

namespace A046388

/-- `filter[A385350(n+2), A065043(#)]` -/
def P7958778516603098896.Spec : Prop :=
  ∀ n, P7958778516603098896.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P5655554614126862018

`filter[A385350(n+2), A212793(#)]`
-/

namespace A046388.P5655554614126862018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A046388.P5655554614126862018

namespace A046388

/-- `filter[A385350(n+2), A212793(#)]` -/
def P5655554614126862018.Spec : Prop :=
  ∀ n, P5655554614126862018.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P6242497138586761636

`filter[A385350(n+2), A323154(#)]`
-/

namespace A046388.P6242497138586761636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A046388.P6242497138586761636

namespace A046388

/-- `filter[A385350(n+2), A323154(#)]` -/
def P6242497138586761636.Spec : Prop :=
  ∀ n, P6242497138586761636.a n = A046388 (n + 1)

end A046388

/-! ## A046388.P8143156372348696803

`filter[A385350(n+2), A323239(#)]`
-/

namespace A046388.P8143156372348696803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A046388.P8143156372348696803

namespace A046388

/-- `filter[A385350(n+2), A323239(#)]` -/
def P8143156372348696803.Spec : Prop :=
  ∀ n, P8143156372348696803.a n = A046388 (n + 1)

end A046388

/-!
# A046389: Products of exactly three distinct odd primes.

The programs for A046389, the canonical program `A046389.P14226479357517666807` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046389 has offset 1).

The definition of A046389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046389.P5577560946074589190

`2*A234099(n+1)+1`
-/

namespace A046389.P5577560946074589190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234099 (n + 1) + 1

end

end A046389.P5577560946074589190

namespace A046389

/-- `2*A234099(n+1)+1` -/
def P5577560946074589190.Spec : Prop :=
  ∀ n, P5577560946074589190.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P3406516500639373310

`2*A234102(n+1)-1`
-/

namespace A046389.P3406516500639373310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234102 (n + 1) - 1

end

end A046389.P3406516500639373310

namespace A046389

/-- `2*A234102(n+1)-1` -/
def P3406516500639373310.Spec : Prop :=
  ∀ n, P3406516500639373310.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P3723328192958202779

`A234102(n+1)+A234099(n+1)`
-/

namespace A046389.P3723328192958202779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1) + A234099 (n + 1)

end

end A046389.P3723328192958202779

namespace A046389

/-- `A234102(n+1)+A234099(n+1)` -/
def P3723328192958202779.Spec : Prop :=
  ∀ n, P3723328192958202779.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P3853729273372926426

`filter[A046316(n+1), A008966(#)]`
-/

namespace A046389.P3853729273372926426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046389.P3853729273372926426

namespace A046389

/-- `filter[A046316(n+1), A008966(#)]` -/
def P3853729273372926426.Spec : Prop :=
  ∀ n, P3853729273372926426.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P13013617552908810145

`filter[A046316(n+1), A354353(#)]`
-/

namespace A046389.P13013617552908810145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A046389.P13013617552908810145

namespace A046389

/-- `filter[A046316(n+1), A354353(#)]` -/
def P13013617552908810145.Spec : Prop :=
  ∀ n, P13013617552908810145.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P2828613400127455185

`filter[A046316(n+1), A354819(#)]`
-/

namespace A046389.P2828613400127455185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046389.P2828613400127455185

namespace A046389

/-- `filter[A046316(n+1), A354819(#)]` -/
def P2828613400127455185.Spec : Prop :=
  ∀ n, P2828613400127455185.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P2236266335948252313

`filter[A046316(n+1), A354926(#)]`
-/

namespace A046389.P2236266335948252313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046389.P2236266335948252313

namespace A046389

/-- `filter[A046316(n+1), A354926(#)]` -/
def P2236266335948252313.Spec : Prop :=
  ∀ n, P2236266335948252313.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P15071311755789044080

`filter[A046316(n+1), A359158(#)]`
-/

namespace A046389.P15071311755789044080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A046389.P15071311755789044080

namespace A046389

/-- `filter[A046316(n+1), A359158(#)]` -/
def P15071311755789044080.Spec : Prop :=
  ∀ n, P15071311755789044080.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P14226479357517666807

`filter[A046316(n+1), A359590(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A046389

/-- `filter[A046316(n+1), A359590(#)]` -/
def P14226479357517666807.Spec : Prop :=
  ∀ n, P14226479357517666807.a n = A046389 (n + 1)

theorem P14226479357517666807.correct : P14226479357517666807.Spec := by
  intro n
  simp only [A046389, Nat.add_sub_cancel]

end A046389

/-! ## A046389.P14655418411016701813

`filter[A046316(n+1), A359592(#)]`
-/

namespace A046389.P14655418411016701813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A046389.P14655418411016701813

namespace A046389

/-- `filter[A046316(n+1), A359592(#)]` -/
def P14655418411016701813.Spec : Prop :=
  ∀ n, P14655418411016701813.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P73585047906548913

`filter[A046316(n+1), A359834(#)]`
-/

namespace A046389.P73585047906548913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A046389.P73585047906548913

namespace A046389

/-- `filter[A046316(n+1), A359834(#)]` -/
def P73585047906548913.Spec : Prop :=
  ∀ n, P73585047906548913.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P4204617045977509675

`filter[A046316(n+1), A374130(#)]`
-/

namespace A046389.P4204617045977509675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A046389.P4204617045977509675

namespace A046389

/-- `filter[A046316(n+1), A374130(#)]` -/
def P4204617045977509675.Spec : Prop :=
  ∀ n, P4204617045977509675.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P4787897199528723015

`filter[A046316(n+1), A374466(#)]`
-/

namespace A046389.P4787897199528723015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A046389.P4787897199528723015

namespace A046389

/-- `filter[A046316(n+1), A374466(#)]` -/
def P4787897199528723015.Spec : Prop :=
  ∀ n, P4787897199528723015.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P10211316692374192342

`filter[A278569(n+1), A008966(#)]`
-/

namespace A046389.P10211316692374192342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046389.P10211316692374192342

namespace A046389

/-- `filter[A278569(n+1), A008966(#)]` -/
def P10211316692374192342.Spec : Prop :=
  ∀ n, P10211316692374192342.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P12678659984492533685

`record[A046386(n+1)/A176170(n+1)]`
-/

namespace A046389.P12678659984492533685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046386 (n + 1) : ℚ) / (A176170 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046389.P12678659984492533685

namespace A046389

/-- `record[A046386(n+1)/A176170(n+1)]` -/
def P12678659984492533685.Spec : Prop :=
  ∀ n, P12678659984492533685.a n = (A046389 (n + 1) : ℚ)

end A046389

/-! ## A046389.P13664096679596733253

`filter[A046340(n+1), A354926(#)]`
-/

namespace A046389.P13664096679596733253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046389.P13664096679596733253

namespace A046389

/-- `filter[A046340(n+1), A354926(#)]` -/
def P13664096679596733253.Spec : Prop :=
  ∀ n, P13664096679596733253.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P2795044826009542774

`filter[A046316(n+1), A252233(#)]`
-/

namespace A046389.P2795044826009542774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A046389.P2795044826009542774

namespace A046389

/-- `filter[A046316(n+1), A252233(#)]` -/
def P2795044826009542774.Spec : Prop :=
  ∀ n, P2795044826009542774.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P81896261657115299

`filter[A046316(n+1), A323154(#)]`
-/

namespace A046389.P81896261657115299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A046389.P81896261657115299

namespace A046389

/-- `filter[A046316(n+1), A323154(#)]` -/
def P81896261657115299.Spec : Prop :=
  ∀ n, P81896261657115299.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P1102088155190100166

`filter[A046316(n+1), A323239(#)]`
-/

namespace A046389.P1102088155190100166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A046389.P1102088155190100166

namespace A046389

/-- `filter[A046316(n+1), A323239(#)]` -/
def P1102088155190100166.Spec : Prop :=
  ∀ n, P1102088155190100166.a n = A046389 (n + 1)

end A046389

/-! ## A046389.P15783341458198952285

`filter[A046316(n+1), A353519(#)]`
-/

namespace A046389.P15783341458198952285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A046389.P15783341458198952285

namespace A046389

/-- `filter[A046316(n+1), A353519(#)]` -/
def P15783341458198952285.Spec : Prop :=
  ∀ n, P15783341458198952285.a n = A046389 (n + 1)

end A046389

/-!
# A046390: Squarefree odd numbers with exactly 4 distinct prime factors.

The programs for A046390, the canonical program `A046390.P348595897100682115` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046390 has offset 1).

The definition of A046390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046390.P1463737189619338015

`∩[A358778(n+1), A378717(n+1)]`
-/

namespace A046390.P1463737189619338015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P1463737189619338015

namespace A046390

/-- `∩[A358778(n+1), A378717(n+1)]` -/
def P1463737189619338015.Spec : Prop :=
  ∀ n, (P1463737189619338015.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P3512909152676144972

`∩[A257415(n+1), A358778(n+1)]`
-/

namespace A046390.P3512909152676144972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P3512909152676144972

namespace A046390

/-- `∩[A257415(n+1), A358778(n+1)]` -/
def P3512909152676144972.Spec : Prop :=
  ∀ n, (P3512909152676144972.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P5961514147129415593

`∩[A257415(n+1), A378717(n+1)]`
-/

namespace A046390.P5961514147129415593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P5961514147129415593

namespace A046390

/-- `∩[A257415(n+1), A378717(n+1)]` -/
def P5961514147129415593.Spec : Prop :=
  ∀ n, (P5961514147129415593.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P348595897100682115

`∩[A046317(n+1), A257415(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046390

/-- `∩[A046317(n+1), A257415(n+1)]` -/
def P348595897100682115.Spec : Prop :=
  ∀ n, (P348595897100682115.a n : ℤ) = A046390 (n + 1)

theorem P348595897100682115.correct : P348595897100682115.Spec := by
  intro n
  simp only [A046390, Nat.add_sub_cancel]

end A046390

/-! ## A046390.P6289224605708703960

`∩[A046317(n+1), A378717(n+1)]`
-/

namespace A046390.P6289224605708703960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P6289224605708703960

namespace A046390

/-- `∩[A046317(n+1), A378717(n+1)]` -/
def P6289224605708703960.Spec : Prop :=
  ∀ n, (P6289224605708703960.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P7927936724244574091

`∩[A359597(n+1), A378717(n+1)]`
-/

namespace A046390.P7927936724244574091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P7927936724244574091

namespace A046390

/-- `∩[A359597(n+1), A378717(n+1)]` -/
def P7927936724244574091.Spec : Prop :=
  ∀ n, (P7927936724244574091.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P9684483484018230069

`∩[A046317(n+1), A046386(n+1)]`
-/

namespace A046390.P9684483484018230069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P9684483484018230069

namespace A046390

/-- `∩[A046317(n+1), A046386(n+1)]` -/
def P9684483484018230069.Spec : Prop :=
  ∀ n, (P9684483484018230069.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P17710979158034702407

`∩[A046386(n+1), A257415(n+1)]`
-/

namespace A046390.P17710979158034702407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P17710979158034702407

namespace A046390

/-- `∩[A046386(n+1), A257415(n+1)]` -/
def P17710979158034702407.Spec : Prop :=
  ∀ n, (P17710979158034702407.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P2803425541472333198

`∩[A046386(n+1), A358778(n+1)]`
-/

namespace A046390.P2803425541472333198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P2803425541472333198

namespace A046390

/-- `∩[A046386(n+1), A358778(n+1)]` -/
def P2803425541472333198.Spec : Prop :=
  ∀ n, (P2803425541472333198.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P18357520364426373868

`∩[A046386(n+1), A359597(n+1)]`
-/

namespace A046390.P18357520364426373868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P18357520364426373868

namespace A046390

/-- `∩[A046386(n+1), A359597(n+1)]` -/
def P18357520364426373868.Spec : Prop :=
  ∀ n, (P18357520364426373868.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P9820514236631562807

`∩[A046317(n+1), A350373(n+1)]`
-/

namespace A046390.P9820514236631562807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P9820514236631562807

namespace A046390

/-- `∩[A046317(n+1), A350373(n+1)]` -/
def P9820514236631562807.Spec : Prop :=
  ∀ n, (P9820514236631562807.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P3365187718498534449

`∩[A350373(n+1), A359597(n+1)]`
-/

namespace A046390.P3365187718498534449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P3365187718498534449

namespace A046390

/-- `∩[A350373(n+1), A359597(n+1)]` -/
def P3365187718498534449.Spec : Prop :=
  ∀ n, (P3365187718498534449.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P1139021434495517158

`filter[A257415(n+1), A008966(#)]`
-/

namespace A046390.P1139021434495517158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046390.P1139021434495517158

namespace A046390

/-- `filter[A257415(n+1), A008966(#)]` -/
def P1139021434495517158.Spec : Prop :=
  ∀ n, P1139021434495517158.a n = A046390 (n + 1)

end A046390

/-! ## A046390.P13614270398437233735

`filter[A257415(n+1), A354819(#)]`
-/

namespace A046390.P13614270398437233735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046390.P13614270398437233735

namespace A046390

/-- `filter[A257415(n+1), A354819(#)]` -/
def P13614270398437233735.Spec : Prop :=
  ∀ n, P13614270398437233735.a n = A046390 (n + 1)

end A046390

/-! ## A046390.P11204833050523610834

`filter[A257415(n+1), A359465(#)]`
-/

namespace A046390.P11204833050523610834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A046390.P11204833050523610834

namespace A046390

/-- `filter[A257415(n+1), A359465(#)]` -/
def P11204833050523610834.Spec : Prop :=
  ∀ n, P11204833050523610834.a n = A046390 (n + 1)

end A046390

/-! ## A046390.P9974517556567935687

`filter[A257415(n+1), A380469(#)]`
-/

namespace A046390.P9974517556567935687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A046390.P9974517556567935687

namespace A046390

/-- `filter[A257415(n+1), A380469(#)]` -/
def P9974517556567935687.Spec : Prop :=
  ∀ n, P9974517556567935687.a n = A046390 (n + 1)

end A046390

/-! ## A046390.P2859586979437503921

`∩[A030634(n+1), A046317(n+1)]`
-/

namespace A046390.P2859586979437503921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P2859586979437503921

namespace A046390

/-- `∩[A030634(n+1), A046317(n+1)]` -/
def P2859586979437503921.Spec : Prop :=
  ∀ n, (P2859586979437503921.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P2231455628848096486

`∩[A030634(n+1), A358778(n+1)]`
-/

namespace A046390.P2231455628848096486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P2231455628848096486

namespace A046390

/-- `∩[A030634(n+1), A358778(n+1)]` -/
def P2231455628848096486.Spec : Prop :=
  ∀ n, (P2231455628848096486.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P8661289017661321692

`∩[A030634(n+1), A359597(n+1)]`
-/

namespace A046390.P8661289017661321692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P8661289017661321692

namespace A046390

/-- `∩[A030634(n+1), A359597(n+1)]` -/
def P8661289017661321692.Spec : Prop :=
  ∀ n, (P8661289017661321692.a n : ℤ) = A046390 (n + 1)

end A046390

/-! ## A046390.P1128453528024139515

`∩[A030634(n+1), A392008(n+1)]`
-/

namespace A046390.P1128453528024139515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P1128453528024139515

namespace A046390

/-- `∩[A030634(n+1), A392008(n+1)]` -/
def P1128453528024139515.Spec : Prop :=
  ∀ n, (P1128453528024139515.a n : ℤ) = A046390 (n + 1)

end A046390

/-!
# A046391: Odd numbers with exactly 5 distinct prime factors.

The programs for A046391, there is no canonical definition to state claims against.
-/

/-! ## A046391.P11101846680009286535

`A067885(n+1)/A260218(2*n+1)`
-/

namespace A046391.P11101846680009286535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A260218 (2 * n + 1) : ℚ)

end

end A046391.P11101846680009286535

/-! ## A046391.P3728286403959868220

`A067885(n+1)/A141310(A027688(n))`
-/

namespace A046391.P3728286403959868220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A141310 (A027688 n).toNat : ℚ)

end

end A046391.P3728286403959868220

/-! ## A046391.P7793476070351603365

`A067885(n+1)/A141310(A027692(n))`
-/

namespace A046391.P7793476070351603365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A141310 (A027692 n).toNat : ℚ)

end

end A046391.P7793476070351603365

/-! ## A046391.P14780829181824089827

`A067885(n+1)/A141310(A048058(n))`
-/

namespace A046391.P14780829181824089827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A141310 (A048058 n).toNat : ℚ)

end

end A046391.P14780829181824089827

/-! ## A046391.P16352859007193724726

`A067885(n+1)/A107393(A157447(n+1))`
-/

namespace A046391.P16352859007193724726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A107393 (A157447 (n + 1)).toNat : ℚ)

end

end A046391.P16352859007193724726

/-! ## A046391.P13671743359655540725

`A067885(n+1)/A318984(A001316(n)²)`
-/

namespace A046391.P13671743359655540725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A318984 (A001316 n ^ 2).toNat : ℚ)

end

end A046391.P13671743359655540725

/-! ## A046391.P10668304704465934207

`A067885(n+1)/A000034(A048700(n+1))`
-/

namespace A046391.P10668304704465934207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A000034 (A048700 (n + 1)).toNat : ℚ)

end

end A046391.P10668304704465934207

/-! ## A046391.P14011704757904950420

`A067885(n+1)/A000034(A271301(A135481(n)))`
-/

namespace A046391.P14011704757904950420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A000034 (A271301 (A135481 n).toNat).toNat : ℚ)

end

end A046391.P14011704757904950420

/-! ## A046391.P13321004020173601308

`A067885(n+1)/A279690(A000040(A081761(n+1)))`
-/

namespace A046391.P13321004020173601308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A279690 (A000040 (A081761 (n + 1)).toNat).toNat : ℚ)

end

end A046391.P13321004020173601308

/-! ## A046391.P1247378703460276218

`A067885(n+1)/A020639(A005843(A343516(n+1)))`
-/

namespace A046391.P1247378703460276218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A020639 (A005843 (A343516 (n + 1)).toNat).toNat : ℚ)

end

end A046391.P1247378703460276218

/-! ## A046391.P9143387774058138016

`A067885(n+1)/A346009(A046386(A006881(n+1)))`
-/

namespace A046391.P9143387774058138016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A346009 (A046386 (A006881 (n + 1)).toNat).toNat : ℚ)

end

end A046391.P9143387774058138016

/-! ## A046391.P1235762637920141754

`A067885(n+1)/A046523(A238086(n+1))`
-/

namespace A046391.P1235762637920141754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067885 (n + 1) : ℚ) / (A046523 (A238086 (n + 1)).toNat : ℚ)

end

end A046391.P1235762637920141754

/-!
# A046392: Palindromes with exactly 2 distinct prime factors.

The programs for A046392, there is no canonical definition to state claims against.
-/

/-! ## A046392.P16205368951579028503

`∩[A035134(n+1), A046328(n+1)]`
-/

namespace A046392.P16205368951579028503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046392.P16205368951579028503

/-! ## A046392.P14103686140723944548

`∩[A046328(n+1), A071251(n+1)]`
-/

namespace A046392.P14103686140723944548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046392.P14103686140723944548

/-! ## A046392.P15760344677548189747

`∩[A046328(n+1), A075799(n+1)]`
-/

namespace A046392.P15760344677548189747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046392.P15760344677548189747

/-! ## A046392.P9769593490791635123

`∩[A035134(n+1), A085751(n+1)]`
-/

namespace A046392.P9769593490791635123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046392.P9769593490791635123

/-! ## A046392.P750837405850602704

`∩[A071251(n+1), A085751(n+1)]`
-/

namespace A046392.P750837405850602704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046392.P750837405850602704

/-! ## A046392.P10594629985403123161

`filter[A046328(n+1), A008966(#)]`
-/

namespace A046392.P10594629985403123161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046392.P10594629985403123161

/-! ## A046392.P5647691875367541486

`filter[A035134(n+1), A354927(#)]`
-/

namespace A046392.P5647691875367541486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A046392.P5647691875367541486

/-! ## A046392.P2011973211353515287

`filter[A035135(n+1), A354927(#)]`
-/

namespace A046392.P2011973211353515287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A046392.P2011973211353515287

/-! ## A046392.P17205391727397666533

`filter[A035134(n+1), A374128(#)]`
-/

namespace A046392.P17205391727397666533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A046392.P17205391727397666533

/-! ## A046392.P5624930490034078587

`filter[A075799(n+1), A374128(#)]`
-/

namespace A046392.P5624930490034078587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A046392.P5624930490034078587

/-! ## A046392.P9902457415538343915

`filter[A046328(n+2), A354353(#)]`
-/

namespace A046392.P9902457415538343915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A046392.P9902457415538343915

/-! ## A046392.P206683104714321513

`filter[A046328(n+2), A354819(#)]`
-/

namespace A046392.P206683104714321513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046392.P206683104714321513

/-! ## A046392.P7440792749455758797

`filter[A046328(n+2), A354927(#)]`
-/

namespace A046392.P7440792749455758797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A046392.P7440792749455758797

/-! ## A046392.P1942888857686255081

`filter[A046338(n+2), A354927(#)]`
-/

namespace A046392.P1942888857686255081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A046392.P1942888857686255081

/-! ## A046392.P2740715886939150096

`filter[A046328(n+2), A359156(#)]`
-/

namespace A046392.P2740715886939150096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A046392.P2740715886939150096

/-! ## A046392.P17913856258948759744

`filter[A035135(n+2), A374128(#)]`
-/

namespace A046392.P17913856258948759744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A046392.P17913856258948759744

/-! ## A046392.P7356932400973900098

`filter[A071251(n+2), A354927(#)]`
-/

namespace A046392.P7356932400973900098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A046392.P7356932400973900098

/-! ## A046392.P15905188383554122504

`filter[A075799(n+2), A354927(#)]`
-/

namespace A046392.P15905188383554122504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A046392.P15905188383554122504

/-! ## A046392.P18167646549282462790

`filter[A046338(n+3), A374128(#)]`
-/

namespace A046392.P18167646549282462790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A046392.P18167646549282462790

/-! ## A046392.P11336266562919858856

`filter[A046328(n+1), A049240(#)]`
-/

namespace A046392.P11336266562919858856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A046392.P11336266562919858856

/-!
# A046393: Palindromes with exactly 3 distinct prime factors.

The programs for A046393, there is no canonical definition to state claims against.
-/

/-! ## A046393.P15837197141162293924

`∩[A046329(n+1), A075800(n+1)]`
-/

namespace A046393.P15837197141162293924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046393.P15837197141162293924

/-! ## A046393.P345725795542709509

`∩[A035134(n+1), A046329(n+1)]`
-/

namespace A046393.P345725795542709509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046393.P345725795542709509

/-! ## A046393.P686435363476020687

`∩[A046329(n+1), A071251(n+1)]`
-/

namespace A046393.P686435363476020687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046393.P686435363476020687

/-! ## A046393.P2063539037562414996

`∩[A035134(n+1), A366430(n+1)]`
-/

namespace A046393.P2063539037562414996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046393.P2063539037562414996

/-! ## A046393.P11851176813091430578

`∩[A071251(n+1), A366430(n+1)]`
-/

namespace A046393.P11851176813091430578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046393.P11851176813091430578

/-! ## A046393.P373957236707479080

`∩[A075800(n+1), A366430(n+1)]`
-/

namespace A046393.P373957236707479080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046393.P373957236707479080

/-! ## A046393.P9267358557381341732

`record[A007913(A046329(n+3))]`
-/

namespace A046393.P9267358557381341732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A046329 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046393.P9267358557381341732

/-! ## A046393.P12547472276145806106

`filter[A046329(n+1), A008966(#)]`
-/

namespace A046393.P12547472276145806106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046393.P12547472276145806106

/-! ## A046393.P2146865711591927837

`filter[A032350(n+1), A354926(#)]`
-/

namespace A046393.P2146865711591927837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046393.P2146865711591927837

/-! ## A046393.P18426300159222707192

`filter[A035134(n+1), A354926(#)]`
-/

namespace A046393.P18426300159222707192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046393.P18426300159222707192

/-! ## A046393.P14214066797545377695

`filter[A035135(n+1), A354926(#)]`
-/

namespace A046393.P14214066797545377695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046393.P14214066797545377695

/-! ## A046393.P6768423801239116278

`filter[A035134(n+1), A358753(#)]`
-/

namespace A046393.P6768423801239116278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A046393.P6768423801239116278

/-! ## A046393.P9350397862965608714

`filter[A046329(n+1), A354353(#)]`
-/

namespace A046393.P9350397862965608714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A046393.P9350397862965608714

/-! ## A046393.P4938909151236927128

`filter[A046329(n+1), A354819(#)]`
-/

namespace A046393.P4938909151236927128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046393.P4938909151236927128

/-! ## A046393.P629745251782180092

`filter[A046329(n+1), A354926(#)]`
-/

namespace A046393.P629745251782180092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046393.P629745251782180092

/-! ## A046393.P14222456241364985314

`filter[A046341(n+1), A354926(#)]`
-/

namespace A046393.P14222456241364985314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046393.P14222456241364985314

/-! ## A046393.P13850052646092406631

`filter[A035134(n+1), A373975(#)]`
-/

namespace A046393.P13850052646092406631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A046393.P13850052646092406631

/-! ## A046393.P181400842232612455

`filter[A046329(n+1), A374130(#)]`
-/

namespace A046393.P181400842232612455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A046393.P181400842232612455

/-! ## A046393.P12288964621423120185

`filter[A046329(n+1), A374466(#)]`
-/

namespace A046393.P12288964621423120185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A046393.P12288964621423120185

/-! ## A046393.P11343835598469944581

`filter[A071251(n+1), A354926(#)]`
-/

namespace A046393.P11343835598469944581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046393.P11343835598469944581

/-!
# A046394: Palindromes with exactly 4 distinct prime factors.

The programs for A046394, there is no canonical definition to state claims against.
-/

/-! ## A046394.P3645010633888284628

`∩[A035134(n+1), A046330(n+1)]`
-/

namespace A046394.P3645010633888284628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P3645010633888284628

/-! ## A046394.P10579276076995767129

`∩[A046330(n+1), A071251(n+1)]`
-/

namespace A046394.P10579276076995767129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P10579276076995767129

/-! ## A046394.P6522358200938562181

`∩[A046330(n+1), A075799(n+1)]`
-/

namespace A046394.P6522358200938562181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P6522358200938562181

/-! ## A046394.P17969613741606386644

`∩[A002113(n+1), A046386(n+1)]`
-/

namespace A046394.P17969613741606386644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P17969613741606386644

/-! ## A046394.P11034086236752074977

`∩[A032350(n+1), A046386(n+1)]`
-/

namespace A046394.P11034086236752074977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P11034086236752074977

/-! ## A046394.P7985249026059639757

`∩[A035134(n+1), A046386(n+1)]`
-/

namespace A046394.P7985249026059639757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P7985249026059639757

/-! ## A046394.P16957922998009283378

`∩[A035135(n+1), A046386(n+1)]`
-/

namespace A046394.P16957922998009283378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P16957922998009283378

/-! ## A046394.P2224229073488727167

`∩[A046330(n+1), A046386(n+1)]`
-/

namespace A046394.P2224229073488727167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P2224229073488727167

/-! ## A046394.P15831219795068869901

`∩[A046338(n+1), A046386(n+1)]`
-/

namespace A046394.P15831219795068869901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P15831219795068869901

/-! ## A046394.P12165750964683726298

`∩[A046386(n+1), A071251(n+1)]`
-/

namespace A046394.P12165750964683726298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046394.P12165750964683726298

/-!
# A046395: Palindromes that are the product of 5 distinct primes.

The programs for A046395, there is no canonical definition to state claims against.
-/

/-! ## A046395.P13748689965193819737

`∩[A046331(n+1), A373465(n+1)]`
-/

namespace A046395.P13748689965193819737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046395.P13748689965193819737

/-! ## A046395.P10095311463191522178

`∩[A046331(n+1), A075800(n+1)]`
-/

namespace A046395.P10095311463191522178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046395.P10095311463191522178

/-! ## A046395.P7800827261980634594

`∩[A075800(n+1), A373465(n+1)]`
-/

namespace A046395.P7800827261980634594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046395.P7800827261980634594

/-! ## A046395.P13143707440926154158

`∩[A046331(n+1), A046387(n+5)]`
-/

namespace A046395.P13143707440926154158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046395.P13143707440926154158

/-! ## A046395.P342268149920595668

`∩[A046341(n+1), A046387(n+5)]`
-/

namespace A046395.P342268149920595668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046395.P342268149920595668

/-!
# A046396: Palindromes which are the product of 6 distinct primes.

The programs for A046396, there is no canonical definition to state claims against.
-/

/-! ## A046396.P17647940405578863654

`∩[A046332(n+1), A373466(n+1)]`
-/

namespace A046396.P17647940405578863654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046396.P17647940405578863654

/-! ## A046396.P10067929873863920889

`record[∏{p}[A373466(n+1), #]]`
-/

namespace A046396.P10067929873863920889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373466 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046396.P10067929873863920889

/-!
# A046399: Smallest squarefree palindrome with exactly n distinct prime factors.

The programs for A046399, there is no canonical definition to state claims against.
-/

/-! ## A046399.P12962057814764499271

`A082617(A144955(∑[n]))`
-/

namespace A046399.P12962057814764499271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082617 (A144955 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A046399.P12962057814764499271

/-! ## A046399.P16241112993513476206

`A082617(A162572(n+1))`
-/

namespace A046399.P16241112993513476206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082617 (A162572 (n + 1)).toNat

end

end A046399.P16241112993513476206

/-! ## A046399.P6213935047636644620

`A082617(A004870(n+2))`
-/

namespace A046399.P6213935047636644620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082617 (A004870 (n + 2)).toNat

end

end A046399.P6213935047636644620

/-! ## A046399.P3579269889124356539

`A082617(A293724(n)+n)`
-/

namespace A046399.P3579269889124356539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082617 (A293724 n + (n : ℤ)).toNat

end

end A046399.P3579269889124356539

