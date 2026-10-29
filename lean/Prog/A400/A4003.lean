import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B006.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A400302: Number T(n,k) of bipartite graphs on vertices {L_1,...,L_n} U {R_1,...,R_n} with exactly k cycles, where (L_i,R_j) can be an edge only if i <= j and all vertex degrees are in {0,2}; triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-1)/2)), read by rows.

The programs for A400302, there is no canonical definition to state claims against.
-/

/-! ## A400302.P9196552940759154722

`A147449(A057926(n))`
-/

namespace A400302.P9196552940759154722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147449 (A057926 n).toNat

end

end A400302.P9196552940759154722

/-! ## A400302.P4098311146015641522

`A098950(A111385(n))`
-/

namespace A400302.P4098311146015641522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 (A111385 n).toNat

end

end A400302.P4098311146015641522

/-! ## A400302.P6426507065351303798

`A171848(A152982(n))`
-/

namespace A400302.P6426507065351303798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171848 (A152982 n).toNat

end

end A400302.P6426507065351303798

/-! ## A400302.P1686875473441953322

`A330774(A004149(n))`
-/

namespace A400302.P1686875473441953322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330774 (A004149 n).toNat

end

end A400302.P1686875473441953322

/-! ## A400302.P1327012115934511325

`A124939(A227035(n))`
-/

namespace A400302.P1327012115934511325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124939 (A227035 n).toNat

end

end A400302.P1327012115934511325

/-!
# A400313: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)^2) / (1 - x), with A(0) = 1.

The programs for A400313, there is no canonical definition to state claims against.
-/

/-! ## A400313.P11820946795892706699

`A103128(A148095(n))`
-/

namespace A400313.P11820946795892706699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A148095 n).toNat

end

end A400313.P11820946795892706699

/-! ## A400313.P18132014733147688674

`A111651(A056010(n))`
-/

namespace A400313.P18132014733147688674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A056010 n).toNat

end

end A400313.P18132014733147688674

/-! ## A400313.P11714969078401441944

`A088141(A125094(n))`
-/

namespace A400313.P11714969078401441944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A125094 n).toNat

end

end A400313.P11714969078401441944

/-! ## A400313.P7374631706382548826

`A083375(A148393(n))`
-/

namespace A400313.P7374631706382548826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A148393 n).toNat

end

end A400313.P7374631706382548826

/-! ## A400313.P2047158889233589749

`A083375(A148394(n))`
-/

namespace A400313.P2047158889233589749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A148394 n).toNat

end

end A400313.P2047158889233589749

/-!
# A400314: G.f. A(x) satisfies A(x) = A(x^3/(1 - x)) / (1 - x)^2, with A(0) = 1.

The programs for A400314, there is no canonical definition to state claims against.
-/

/-! ## A400314.P14866638553535517815

`A103128(A331321(n))`
-/

namespace A400314.P14866638553535517815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A331321 n).toNat

end

end A400314.P14866638553535517815

/-! ## A400314.P1631085825982421495

`A144968(A190173(n+1))`
-/

namespace A400314.P1631085825982421495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (A190173 (n + 1)).toNat

end

end A400314.P1631085825982421495

/-! ## A400314.P10845477141359568540

`A276581(A182890(n+1))`
-/

namespace A400314.P10845477141359568540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A182890 (n + 1)).toNat

end

end A400314.P10845477141359568540

/-! ## A400314.P15470669798089826640

`A100617(A002906(n))`
-/

namespace A400314.P15470669798089826640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A002906 n).toNat

end

end A400314.P15470669798089826640

/-! ## A400314.P640500365312897126

`A180447(A245749(n))`
-/

namespace A400314.P640500365312897126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A245749 (n + 11)).toNat

end

end A400314.P640500365312897126

/-!
# A400315: G.f. A(x) satisfies A(x) = A(x^4/(1 - x)) / (1 - x)^2, with A(0) = 1.

The programs for A400315, there is no canonical definition to state claims against.
-/

/-! ## A400315.P463445484320697739

`A147968(A048818(n))`
-/

namespace A400315.P463445484320697739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A048818 n).toNat

end

end A400315.P463445484320697739

/-! ## A400315.P3887814848671756537

`A373810(A282913(n))`
-/

namespace A400315.P3887814848671756537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A282913 n).toNat

end

end A400315.P3887814848671756537

/-! ## A400315.P7419270590828278477

`eq[A040847(n), A060241(n+3)]`
-/

namespace A400315.P7419270590828278477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060241 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400315.P7419270590828278477

/-!
# A400324: Irregular triangle read by rows, where row n gives the lengths of consecutive same species move blocks in the solution of the Frogs and Toads interchange puzzle with n frogs and n toads.

The programs for A400324, the canonical program `A400324.P3198541763604547307` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400324 has offset 1).

The definition of A400324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400324.P3198541763604547307

`A004737(A005369(n+1)+n+2)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400324

/-- `A004737(A005369(n+1)+n+2)` -/
def P3198541763604547307.Spec : Prop :=
  ∀ n, P3198541763604547307.a n = A400324 (n + 1)

theorem P3198541763604547307.correct : P3198541763604547307.Spec := by
  intro n
  simp only [A400324, Nat.add_sub_cancel]

end A400324

/-! ## A400324.P2043983496306147540

`A053188(n+2)+A023969(n+1)`
-/

namespace A400324.P2043983496306147540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n + 2) + A023969 (n + 1)

end

end A400324.P2043983496306147540

namespace A400324

/-- `A053188(n+2)+A023969(n+1)` -/
def P2043983496306147540.Spec : Prop :=
  ∀ n, P2043983496306147540.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P3742652923462793840

`A004739(n+2-A000194(n+1))`
-/

namespace A400324.P3742652923462793840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 ((n + 2 : ℤ) - A000194 (n + 1)).toNat

end

end A400324.P3742652923462793840

namespace A400324

/-- `A004739(n+2-A000194(n+1))` -/
def P3742652923462793840.Spec : Prop :=
  ∀ n, P3742652923462793840.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P11001119226372053374

`A004739(n+1)+A004737(n+1)-A004739(n+2)`
-/

namespace A400324.P11001119226372053374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + A004737 (n + 1) - A004739 (n + 2)

end

end A400324.P11001119226372053374

namespace A400324

/-- `A004739(n+1)+A004737(n+1)-A004739(n+2)` -/
def P11001119226372053374.Spec : Prop :=
  ∀ n, P11001119226372053374.a n = A400324 (n + 1)

end A400324

/-! ## A400324.P7608421820167546382

`A004739(A134986(n+1))`
-/

namespace A400324.P7608421820167546382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A134986 (n + 1)).toNat

end

end A400324.P7608421820167546382

namespace A400324

/-- `A004739(A134986(n+1))` -/
def P7608421820167546382.Spec : Prop :=
  ∀ n, P7608421820167546382.a n = A400324 (n + 1)

end A400324

/-!
# A400326: Number of labeled biconnected bipartite planar graphs with n vertices.

The programs for A400326, there is no canonical definition to state claims against.
-/

/-! ## A400326.P8014509109783771781

`A316675(n*A000041(A000041(n+1)))`
-/

namespace A400326.P8014509109783771781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 ((n : ℤ) * A000041 (A000041 (n + 1)).toNat).toNat

end

end A400326.P8014509109783771781

/-!
# A400330: Minimum difference between positive integers x, y with x * y = n! and gcd(x, y) = 2.

The programs for A400330, there is no canonical definition to state claims against.
-/

/-! ## A400330.P6165688307294028333

`A380791(A123187(n))`
-/

namespace A400330.P6165688307294028333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380791 ((A123187 n).toNat + 66)

end

end A400330.P6165688307294028333

/-!
# A400337: G.f.: 1/G(-x), where G(x) is g.f. for A225543.

The programs for A400337, there is no canonical definition to state claims against.
-/

/-! ## A400337.P8285190971716307837

`abs(A400338(n))`
-/

namespace A400337.P8285190971716307837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A400338 n|

end

end A400337.P8285190971716307837

/-! ## A400337.P14030076881556546913

`A033999(n)*A400338(n)`
-/

namespace A400337.P14030076881556546913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A400338 n

end

end A400337.P14030076881556546913

/-! ## A400337.P4294021479016809961

`gcd(A000038(n), A400338(n))`
-/

namespace A400337.P4294021479016809961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A400338 n)

end

end A400337.P4294021479016809961

/-! ## A400337.P10744788091848352081

`lcm(A000034(n), A400338(n))`
-/

namespace A400337.P10744788091848352081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A400338 n)

end

end A400337.P10744788091848352081

/-!
# A400338: G.f.: 1/G(x), where G(x) is g.f. for A225543.

The programs for A400338, there is no canonical definition to state claims against.
-/

/-! ## A400338.P8967534081568984240

`A033999(n)*A400337(n)`
-/

namespace A400338.P8967534081568984240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A400337 n

end

end A400338.P8967534081568984240

/-!
# A400343: a(0) = 1; a(2*n) = Sum_{j=0..n} a(j) * a(n-j), a(2*n+1) = 2 * a(2*n).

The programs for A400343, there is no canonical definition to state claims against.
-/

/-! ## A400343.P18245082932228507456

`A134361(A084422(n))`
-/

namespace A400343.P18245082932228507456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A084422 n).toNat

end

end A400343.P18245082932228507456

/-! ## A400343.P1714640364802151622

`A134361(A175841(n+1))`
-/

namespace A400343.P1714640364802151622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A175841 (n + 1)).toNat

end

end A400343.P1714640364802151622

/-! ## A400343.P1583945668433957599

`A279667(A347786(n+1))`
-/

namespace A400343.P1583945668433957599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279667 (A347786 (n + 1)).toNat

end

end A400343.P1583945668433957599

/-! ## A400343.P4995497965883017192

`A025487(A085082(A077569(A025487(n+1))))`
-/

namespace A400343.P4995497965883017192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A085082 (A077569 (A025487 (n + 1)).toNat).toNat).toNat

end

end A400343.P4995497965883017192

/-!
# A400344: Number of upper triangular n X n binary matrices having all row and column sums in {0,1,2}.

The programs for A400344, there is no canonical definition to state claims against.
-/

/-! ## A400344.P4369476115230533206

`A157341(A140796(n))`
-/

namespace A400344.P4369476115230533206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157341 (A140796 n).toNat

end

end A400344.P4369476115230533206

/-!
# A400347: a(1) = 2; a(n+1) is the least prime factor of 1 + Product_{k=1..n, a(k)<=a(n)} a(k) which is not yet in the sequence.

The programs for A400347, there is no canonical definition to state claims against.
-/

/-! ## A400347.P17153505150008686462

`filter[A375543(n+1), A195053(#)]`
-/

namespace A400347.P17153505150008686462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A195053 (f1 j).toNat = 1) n)

end

end A400347.P17153505150008686462

/-!
# A400349: a(n) = 1 + Sum_{k=1..n+1} k*(n - k + 1)*hypergeom([k-n, (1+n)/k], [2], -k^2).

The programs for A400349, there is no canonical definition to state claims against.
-/

/-! ## A400349.P5605082689433331908

`A215822(A026721(n))`
-/

namespace A400349.P5605082689433331908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (A026721 n).toNat

end

end A400349.P5605082689433331908

/-!
# A400358: Decimal expansion of (3 - sqrt(6))/2.

The programs for A400358, there is no canonical definition to state claims against.
-/

/-! ## A400358.P14246706906407508851

`9-A379800(n+1)`
-/

namespace A400358.P14246706906407508851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A379800 (n + 1 + 1)

end

end A400358.P14246706906407508851

/-!
# A400361: a(n) = A018804(n) - A384628(n).

The programs for A400361, the canonical program `A400361.P1889396071312864242` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400361 has offset 1).

The definition of A400361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A018804(n+1)-A384628(n+1)` (program `A400361.P1889396071312864242`, by `A400361.P1889396071312864242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400361.P1889396071312864242

`A018804(n+1)-A384628(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400361

/-- `A018804(n+1)-A384628(n+1)` -/
def P1889396071312864242.Spec : Prop :=
  ∀ n, P1889396071312864242.a n = A400361 (n + 1)

theorem P1889396071312864242.correct : P1889396071312864242.Spec := by
  intro n
  simp only [A400361, Nat.add_sub_cancel]

end A400361

/-!
# A400363: Pythagorean primes p such that the sum of the fourth powers of the legs of the primitive Pythagorean triangle with hypotenuse p is prime.

The programs for A400363, there is no canonical definition to state claims against.
-/

/-! ## A400363.P9404139068940963754

`∩[A128926(n+1), A396006(n+1)]`
-/

namespace A400363.P9404139068940963754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400363.P9404139068940963754

/-!
# A400364: Sum of the fourth powers of the legs of the primitive Pythagorean triangle with prime hypotenuse A002144(n).

The programs for A400364, there is no canonical definition to state claims against.
-/

/-! ## A400364.P1000460894720622368

`A002365(n+1)^4+A002366(n+1)^4`
-/

namespace A400364.P1000460894720622368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002365 (n + 1) ^ 4 + A002366 (n + 1) ^ 4

end

end A400364.P1000460894720622368

/-! ## A400364.P7370158173241360300

`A400365(n+1)/A002144(n+1)`
-/

namespace A400364.P7370158173241360300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A400364.P7370158173241360300

/-! ## A400364.P13934768557404735636

`A400365(n+1)/A002313(n+2)`
-/

namespace A400364.P13934768557404735636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400365 (n + 1) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A400364.P13934768557404735636

/-!
# A400365: Square roots of the central entries in a six-square 3 X 3 magic-square construction from primitive Pythagorean triangles with prime hypotenuse.

The programs for A400365, there is no canonical definition to state claims against.
-/

/-! ## A400365.P2848052481861345499

`A002144(n+1)*A400364(n+1)`
-/

namespace A400365.P2848052481861345499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A400364 (n + 1)

end

end A400365.P2848052481861345499

/-! ## A400365.P6294570809958521268

`A002313(n+2)*A400364(n+1)`
-/

namespace A400365.P6294570809958521268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A400364 (n + 1)

end

end A400365.P6294570809958521268

/-!
# A400366: Number of Proth numbers <= n.

The programs for A400366, the canonical program `A400366.P16946249597107068672` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400366 has offset 0).

The definition of A400366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400366.P16946249597107068672

`∑[char[A080075(n+1)]]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400366

/-- `∑[char[A080075(n+1)]]` -/
def P16946249597107068672.Spec : Prop :=
  ∀ n, (P16946249597107068672.a n : ℤ) = A400366 n

theorem P16946249597107068672.correct : P16946249597107068672.Spec := by
  intro n
  simp only [A400366]

end A400366

/-! ## A400366.P12961873618281884949

`∑[char[A369901(n+1)]]`
-/

namespace A400366.P12961873618281884949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369901 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P12961873618281884949

namespace A400366

/-- `∑[char[A369901(n+1)]]` -/
def P12961873618281884949.Spec : Prop :=
  ∀ n, (P12961873618281884949.a n : ℤ) = A400366 n

end A400366

/-!
# A400372: Expansion of Product_{k>=0} (1 + Sum_{j>=0} x^(3^(k+j))).

The programs for A400372, there is no canonical definition to state claims against.
-/

/-! ## A400372.P12660123970408377011

`A172184(A310770(n))`
-/

namespace A400372.P12660123970408377011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172184 (A310770 n).toNat

end

end A400372.P12660123970408377011

/-! ## A400372.P8000948885975062837

`A118269(A119917(n+1))`
-/

namespace A400372.P8000948885975062837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118269 (A119917 (n + 1)).toNat

end

end A400372.P8000948885975062837

/-!
# A400377: Expansion of e.g.f. 1/(1 + log(1 - x) * cos(x)).

The programs for A400377, there is no canonical definition to state claims against.
-/

/-! ## A400377.P790858466728357555

`A235130(A116842(n+1))`
-/

namespace A400377.P790858466728357555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A116842 (n + 1)).toNat

end

end A400377.P790858466728357555

/-! ## A400377.P1655742001117984069

`A392695(A390446(A390567(A392698(n+2))))`
-/

namespace A400377.P1655742001117984069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392695 (A390446 (A390567 (A392698 (n + 2)).toNat).toNat).toNat

end

end A400377.P1655742001117984069

/-!
# A400379: Number of nonempty sets of pairwise commuting permutations of [n] generating a transitive group.

The programs for A400379, there is no canonical definition to state claims against.
-/

/-! ## A400379.P16394616128407460847

`A177045(n^3+1)`
-/

namespace A400379.P16394616128407460847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177045 (n ^ 3 + 1)

end

end A400379.P16394616128407460847

/-!
# A400384: Positive integers whose divisors can be partitioned into two disjoint subsets with sums differing by 5.

The programs for A400384, there is no canonical definition to state claims against.
-/

/-! ## A400384.P1398734135399862291

`∩[A359680(n+1), A374664(n+1)]`
-/

namespace A400384.P1398734135399862291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400384.P1398734135399862291

/-! ## A400384.P9136906756904327073

`∩[A309810(n+1), A359680(n+1)]`
-/

namespace A400384.P9136906756904327073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400384.P9136906756904327073

/-! ## A400384.P1333377671200726624

`filter[A325044(n+1), A319988(#)]`
-/

namespace A400384.P1333377671200726624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A400384.P1333377671200726624

/-! ## A400384.P7565438725038800230

`filter[A025611(n+2), A174889(#)]`
-/

namespace A400384.P7565438725038800230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A400384.P7565438725038800230

/-! ## A400384.P6838938376690236123

`filter[A049439(n+2), A174889(#)]`
-/

namespace A400384.P6838938376690236123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049439 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A400384.P6838938376690236123

/-!
# A400386: Rows sum of triangle A106580.

The programs for A400386, there is no canonical definition to state claims against.
-/

/-! ## A400386.P5706027303831614885

`A089324(n+2)-A089324(n)`
-/

namespace A400386.P5706027303831614885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089324 (n + 2) - A089324 n

end

end A400386.P5706027303831614885

/-! ## A400386.P11731989923269502019

`A106580(∑[n+3])`
-/

namespace A400386.P11731989923269502019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400386.P11731989923269502019

/-! ## A400386.P11648072136830165871

`A204006(A151110(n))`
-/

namespace A400386.P11648072136830165871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (A151110 n).toNat

end

end A400386.P11648072136830165871

/-!
# A400390: Irregular table read by rows: T(n, k) = gcd(d(n, k), n/d(n, k)), where d(n, k) = A027750(n, k) is the k-th divisor of n.

The programs for A400390, there is no canonical definition to state claims against.
-/

/-! ## A400390.P5846465622645116631

`gcd(A027750(n+1), A056538(n+1))`
-/

namespace A400390.P5846465622645116631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027750 (n + 1)) (A056538 (n + 1))

end

end A400390.P5846465622645116631

/-! ## A400390.P12006710102449741610

`A003989(A056534(n+1))`
-/

namespace A400390.P12006710102449741610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A056534 (n + 1)).toNat

end

end A400390.P12006710102449741610

/-! ## A400390.P1999205955365561294

`gcd(A275055(n+1), A308805(n+1))`
-/

namespace A400390.P1999205955365561294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275055 (n + 1)) (A308805 (n + 1))

end

end A400390.P1999205955365561294

/-! ## A400390.P14751551818683443594

`gcd(A036624(n), A163100(n+1))`
-/

namespace A400390.P14751551818683443594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036624 n) (A163100 (n + 1))

end

end A400390.P14751551818683443594

/-!
# A400391: Irregular table read by rows: T(n, k) = gcud(d(n, k), n/d(n, k)), where d(n, k) = A027750(n, k) is the k-th divisor of n, and gcud is the greatest common unitary divisor.

The programs for A400391, there is no canonical definition to state claims against.
-/

/-! ## A400391.P14076061922159003047

`A225174(A056534(n+1))`
-/

namespace A400391.P14076061922159003047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225174 (A056534 (n + 1)).toNat

end

end A400391.P14076061922159003047

/-! ## A400391.P7205639244115429612

`gcd(A268574(n+1), A400390(n+1))`
-/

namespace A400391.P7205639244115429612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268574 (n + 1)) (A400390 (n + 1))

end

end A400391.P7205639244115429612

/-! ## A400391.P7218274789942596496

`gcd(A153359(n), A400390(n+1))`
-/

namespace A400391.P7218274789942596496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153359 n) (A400390 (n + 1))

end

end A400391.P7218274789942596496

/-! ## A400391.P184032228772822661

`gcd(A000076(n), A400390(n+1))`
-/

namespace A400391.P184032228772822661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000076 n) (A400390 (n + 1))

end

end A400391.P184032228772822661

/-! ## A400391.P15398903289538406330

`gcd(A094102(n+1), A379396(n+1))`
-/

namespace A400391.P15398903289538406330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094102 (n + 1)) (A379396 (n + 1))

end

end A400391.P15398903289538406330

/-!
# A400392: a(n) = Sum_{d|n} gcud(d, n/d), where gcud is the greatest common unitary divisor.

The programs for A400392, there is no canonical definition to state claims against.
-/

/-! ## A400392.P7805012462274518960

`A400393(A246337(n+1))`
-/

namespace A400392.P7805012462274518960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400393 (A246337 (n + 1)).toNat

end

end A400392.P7805012462274518960

/-! ## A400392.P7643556059075597437

`A400393(A083434(n+1))`
-/

namespace A400392.P7643556059075597437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400393 (A083434 (n + 1)).toNat

end

end A400392.P7643556059075597437

/-! ## A400392.P13461653206425581801

`A400393(A187829(n+1))`
-/

namespace A400392.P13461653206425581801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400393 (A187829 (n + 1)).toNat

end

end A400392.P13461653206425581801

/-! ## A400392.P16204375009332780660

`A400393(A077168(n))`
-/

namespace A400392.P16204375009332780660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400393 (A077168 n).toNat

end

end A400392.P16204375009332780660

/-!
# A400398: a(n) = Sum_{d|n} gcd(d, n/d) / gcud(d, n/d), where gcud is the greatest common unitary divisor.

The programs for A400398, there is no canonical definition to state claims against.
-/

/-! ## A400398.P14715284876973271468

`A235122(A061200(n+1))`
-/

namespace A400398.P14715284876973271468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235122 (A061200 (n + 1)).toNat

end

end A400398.P14715284876973271468

/-!
# A400399: Value of k that maximizes P(X < Y), where X and Y are independent binomial random variables with k trials and success probabilities 1/n and 1/(2*n), respectively. In case of ties, choose the largest k.

The programs for A400399, there is no canonical definition to state claims against.
-/

/-! ## A400399.P15129285944663968091

`A194847(A228272(n+1))`
-/

namespace A400399.P15129285944663968091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 (A228272 (n + 1)).toNat

end

end A400399.P15129285944663968091

/-! ## A400399.P3761542200820608342

`A204553(A010007(n+1))`
-/

namespace A400399.P3761542200820608342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A010007 (n + 1)).toNat

end

end A400399.P3761542200820608342

/-! ## A400399.P9147392455988642450

`A204553(A244630(n+1))`
-/

namespace A400399.P9147392455988642450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A244630 (n + 1)).toNat

end

end A400399.P9147392455988642450

/-! ## A400399.P4566310728341805837

`A204553(A321180(n+1))`
-/

namespace A400399.P4566310728341805837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A321180 (n + 1)).toNat

end

end A400399.P4566310728341805837

/-! ## A400399.P2963497709824035223

`A285524(A004081(n+2))`
-/

namespace A400399.P2963497709824035223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (A004081 (n + 2)).toNat

end

end A400399.P2963497709824035223

