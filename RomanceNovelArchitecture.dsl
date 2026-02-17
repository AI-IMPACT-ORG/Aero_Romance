// SPDX-License-Identifier: GPL-3.0-only

workspace {
    name "Romance Novel Architecture"
    description "A graph-based architecture for romance novels"

    model {
        // Core Concept Graphs
        concepts {
            // Story Structure Graph
            storyStructure {
                description "Core story structure elements and their relationships"
                components {
                    beats = component "Story Beats" {
                        description "The main story beats that drive the romance forward"
                        implementation {
                            "hayes20": {
                                "description": "20-beat romance structure by Jami Gold",
                                "properties": {
                                    "total_beats": 20,
                                    "act_structure": "three_act",
                                    "pov_style": "dual"
                                },
                                "beats": {
                                    "b01": {
                                        "name": "Opening Image",
                                        "act": 1,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "establish_status_quo"
                                    },
                                    "b02": {
                                        "name": "Theme Stated",
                                        "act": 1,
                                        "required": true,
                                        "pov": "either",
                                        "purpose": "hint_at_theme"
                                    },
                                    "b03": {
                                        "name": "Setup",
                                        "act": 1,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "establish_world"
                                    },
                                    "b04": {
                                        "name": "Catalyst",
                                        "act": 1,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "inciting_incident"
                                    },
                                    "b05": {
                                        "name": "Debate",
                                        "act": 1,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "internal_conflict"
                                    },
                                    "b06": {
                                        "name": "Break into Two",
                                        "act": 1,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "commit_to_change"
                                    },
                                    "b07": {
                                        "name": "B Story",
                                        "act": 2,
                                        "required": true,
                                        "pov": "either",
                                        "purpose": "introduce_romance"
                                    },
                                    "b08": {
                                        "name": "Fun and Games",
                                        "act": 2,
                                        "required": true,
                                        "pov": "both",
                                        "purpose": "explore_new_world"
                                    },
                                    "b09": {
                                        "name": "Midpoint",
                                        "act": 2,
                                        "required": true,
                                        "pov": "both",
                                        "purpose": "false_victory"
                                    },
                                    "b10": {
                                        "name": "Bad Guys Close In",
                                        "act": 2,
                                        "required": true,
                                        "pov": "both",
                                        "purpose": "complications_arise"
                                    },
                                    "b11": {
                                        "name": "All Is Lost",
                                        "act": 2,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "lowest_point"
                                    },
                                    "b12": {
                                        "name": "Dark Night of the Soul",
                                        "act": 2,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "internal_conflict_peak"
                                    },
                                    "b13": {
                                        "name": "Break into Three",
                                        "act": 3,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "new_insight"
                                    },
                                    "b14": {
                                        "name": "Finale",
                                        "act": 3,
                                        "required": true,
                                        "pov": "both",
                                        "purpose": "confrontation"
                                    },
                                    "b15": {
                                        "name": "Final Image",
                                        "act": 3,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "show_change"
                                    }
                                }
                            },
                            "hauge6": {
                                "description": "6-stage story structure by Michael Hauge",
                                "properties": {
                                    "total_beats": 6,
                                    "act_structure": "three_act",
                                    "pov_style": "single"
                                },
                                "beats": {
                                    "s1": {
                                        "name": "Setup",
                                        "act": 1,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "establish_world"
                                    },
                                    "s2": {
                                        "name": "New Situation",
                                        "act": 1,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "inciting_incident"
                                    },
                                    "s3": {
                                        "name": "Progress",
                                        "act": 2,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "adaptation"
                                    },
                                    "s4": {
                                        "name": "Complications",
                                        "act": 2,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "obstacles"
                                    },
                                    "s5": {
                                        "name": "Final Push",
                                        "act": 3,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "climax"
                                    },
                                    "s6": {
                                        "name": "Aftermath",
                                        "act": 3,
                                        "required": true,
                                        "pov": "protagonist",
                                        "purpose": "resolution"
                                    }
                                }
                            }
                        }
                    }
                    
                    scenes = component "Scene Structure" {
                        description "Scene organization and patterns"
                        implementation {
                            "structure": {
                                "opening": "hook|establishment|transition"
                                "middle": "development|conflict|revelation"
                                "ending": "resolution|cliffhanger|transition"
                            }
                            "pacing": {
                                "fast": "short_scenes|high_conflict|quick_dialogue"
                                "moderate": "balanced_scenes|mixed_conflict|natural_dialogue"
                                "slow": "long_scenes|low_conflict|detailed_dialogue"
                            }
                        }
                    }
                    
                    chapters = component "Chapter Structure" {
                        description "Chapter organization and patterns"
                        implementation {
                            "requirements": {
                                "min_scenes": 2,
                                "max_scenes": 5,
                                "pov_consistency": "per_chapter"
                            },
                            "chapter_types": {
                                "opening": {
                                    "purpose": "establish_world_and_characters",
                                    "required_elements": [
                                        "hook",
                                        "character_introduction",
                                        "world_setup"
                                    ],
                                    "pacing": "moderate",
                                    "emotional_tone": "establishing"
                                },
                                "development": {
                                    "purpose": "advance_plot_and_relationships",
                                    "required_elements": [
                                        "conflict",
                                        "character_growth",
                                        "relationship_development"
                                    ],
                                    "pacing": "variable",
                                    "emotional_tone": "building"
                                },
                                "turning_point": {
                                    "purpose": "major_plot_shifts",
                                    "required_elements": [
                                        "revelation",
                                        "decision_point",
                                        "consequence"
                                    ],
                                    "pacing": "intense",
                                    "emotional_tone": "heightened"
                                },
                                "climax": {
                                    "purpose": "peak_conflict_resolution",
                                    "required_elements": [
                                        "confrontation",
                                        "emotional_peak",
                                        "resolution_setup"
                                    ],
                                    "pacing": "fast",
                                    "emotional_tone": "intense"
                                },
                                "resolution": {
                                    "purpose": "wrap_up_and_closure",
                                    "required_elements": [
                                        "emotional_resolution",
                                        "character_growth_showcase",
                                        "future_hint"
                                    ],
                                    "pacing": "moderate",
                                    "emotional_tone": "satisfying"
                                }
                            },
                            "chapter_patterns": {
                                "three_act": {
                                    "act1": {
                                        "chapters": "1-5",
                                        "focus": "setup_and_inciting_incident",
                                        "pacing": "establishing"
                                    },
                                    "act2": {
                                        "chapters": "6-15",
                                        "focus": "conflict_and_development",
                                        "pacing": "building"
                                    },
                                    "act3": {
                                        "chapters": "16-20",
                                        "focus": "resolution_and_climax",
                                        "pacing": "intensifying"
                                    }
                                },
                                "four_act": {
                                    "act1": {
                                        "chapters": "1-4",
                                        "focus": "setup",
                                        "pacing": "establishing"
                                    },
                                    "act2": {
                                        "chapters": "5-10",
                                        "focus": "rising_action",
                                        "pacing": "building"
                                    },
                                    "act3": {
                                        "chapters": "11-15",
                                        "focus": "falling_action",
                                        "pacing": "intensifying"
                                    },
                                    "act4": {
                                        "chapters": "16-20",
                                        "focus": "resolution",
                                        "pacing": "resolving"
                                    }
                                }
                            },
                            "scene_distribution": {
                                "opening_chapter": {
                                    "min_scenes": 3,
                                    "max_scenes": 4,
                                    "purpose": "establish_world"
                                },
                                "middle_chapters": {
                                    "min_scenes": 2,
                                    "max_scenes": 5,
                                    "purpose": "develop_plot"
                                },
                                "climax_chapter": {
                                    "min_scenes": 3,
                                    "max_scenes": 4,
                                    "purpose": "resolve_conflict"
                                }
                            }
                        }
                    }

                    // New component
                    pacing = component "Pacing Control" {
                        description "Story pacing and rhythm management"
                        implementation {
                            "patterns": {
                                "tension_arcs": {
                                    "build_up": "gradual|sudden"
                                    "release": "partial|complete"
                                    "frequency": "regular|irregular"
                                }
                                "emotional_rhythm": {
                                    "high_points": "conflict|revelation|intimacy"
                                    "low_points": "reflection|setback|doubt"
                                    "transitions": "smooth|abrupt"
                                }
                            }
                        }
                    }
                }
            }

            // Character Development Graph
            characterDevelopment {
                description "Character growth and relationship dynamics"
                components {
                    arcs = component "Character Arcs" {
                        description "Character growth patterns and development"
                        implementation {
                            "protagonist": {
                                "arc_type": "positive_change"
                                "required_beats": [
                                    {
                                        "beat": "b01"
                                        "character_state": "initial_wound"
                                        "intensity": {
                                            "emotional": 0.3
                                            "conflict": "low"
                                        }
                                    }
                                ]
                            }
                            "love_interest": {
                                "arc_type": "parallel_growth"
                                "required_beats": [
                                    {
                                        "beat": "b03"
                                        "character_state": "first_meet"
                                    }
                                ]
                            }
                        }
                    }
                    
                    voice = component "Character Voice" {
                        description "Character voice and dialogue patterns"
                        implementation {
                            "elements": {
                                "dialect": {
                                    "type": "regional|social|historical"
                                    "consistency": "required"
                                }
                                "vocabulary": {
                                    "level": "appropriate_to_character"
                                    "consistency": "required"
                                }
                            }
                            "dialogue_styles": {
                                "quick_banter": {
                                    "pacing": "fast"
                                    "use_case": "tension|humor|conflict"
                                }
                                "emotional_exchange": {
                                    "pacing": "slow"
                                    "use_case": "intimacy|confession|resolution"
                                }
                            }
                        }
                    }
                    
                    dynamics = component "Relationship Dynamics" {
                        description "Power dynamics and emotional connections"
                        implementation {
                            "power_shifts": {
                                "types": ["equal", "imbalanced", "evolving"]
                                "triggers": ["conflict", "growth", "revelation"]
                            }
                            "emotional_intensity": {
                                "scale": "0.0 to 1.0"
                                "triggers": ["conflict", "intimacy", "revelation"]
                            }
                        }
                    }

                    // New component
                    motivation = component "Character Motivation" {
                        description "Character goals, desires, and internal conflicts"
                        implementation {
                            "types": {
                                "external_goals": {
                                    "nature": "concrete|abstract"
                                    "stakes": "personal|professional|social"
                                }
                                "internal_desires": {
                                    "nature": "conscious|unconscious"
                                    "conflict": "with_goal|with_self|with_other"
                                }
                                "growth_areas": {
                                    "type": "emotional|professional|personal"
                                    "obstacles": "internal|external|both"
                                }
                            }
                        }
                    }
                }
            }

            // Genre and Style Graph
            genreStyle {
                description "Genre-specific elements and stylistic choices"
                components {
                    genres = component "Genre Elements" {
                        description "Genre-specific constraints and requirements"
                        implementation {
                            "contemporary": {
                                "heat_levels": ["sweet", "warm", "steamy", "erotic"]
                                "required_elements": [
                                    "modern_setting",
                                    "realistic_conflicts",
                                    "contemporary_issues"
                                ],
                                "subgenres": {
                                    "romantic_comedy": {
                                        "tone": "lighthearted",
                                        "conflict_style": "misunderstanding_based",
                                        "pacing": "fast",
                                        "typical_length": "70k-90k"
                                    },
                                    "womens_fiction": {
                                        "tone": "emotional",
                                        "conflict_style": "character_growth",
                                        "pacing": "moderate",
                                        "typical_length": "80k-100k"
                                    },
                                    "new_adult": {
                                        "tone": "coming_of_age",
                                        "conflict_style": "identity_based",
                                        "pacing": "variable",
                                        "typical_length": "70k-90k"
                                    }
                                }
                            },
                            "historical": {
                                "heat_levels": ["sweet", "warm", "steamy"]
                                "required_elements": [
                                    "period_accuracy",
                                    "historical_conflicts",
                                    "period_appropriate_language"
                                ],
                                "subgenres": {
                                    "regency": {
                                        "tone": "witty",
                                        "conflict_style": "social_constraints",
                                        "pacing": "moderate",
                                        "typical_length": "80k-100k"
                                    },
                                    "medieval": {
                                        "tone": "dramatic",
                                        "conflict_style": "political",
                                        "pacing": "variable",
                                        "typical_length": "90k-110k"
                                    },
                                    "western": {
                                        "tone": "rugged",
                                        "conflict_style": "survival_based",
                                        "pacing": "moderate",
                                        "typical_length": "75k-95k"
                                    }
                                }
                            },
                            "paranormal": {
                                "heat_levels": ["warm", "steamy", "erotic"]
                                "required_elements": [
                                    "supernatural_elements",
                                    "world_building",
                                    "magical_conflicts"
                                ],
                                "subgenres": {
                                    "urban_fantasy": {
                                        "tone": "gritty",
                                        "conflict_style": "supernatural_vs_mundane",
                                        "pacing": "fast",
                                        "typical_length": "85k-105k"
                                    },
                                    "paranormal_romance": {
                                        "tone": "mysterious",
                                        "conflict_style": "species_based",
                                        "pacing": "moderate",
                                        "typical_length": "80k-100k"
                                    },
                                    "fantasy_romance": {
                                        "tone": "epic",
                                        "conflict_style": "quest_based",
                                        "pacing": "variable",
                                        "typical_length": "90k-120k"
                                    }
                                }
                            }
                        }
                    }
                    
                    targetAudience = component "Target Audience" {
                        description "Reader demographics and preferences"
                        implementation {
                            "demographics": {
                                "age_groups": {
                                    "young_adult": {
                                        "age_range": "13-18",
                                        "preferred_genres": ["contemporary", "paranormal"],
                                        "tone_preferences": ["coming_of_age", "adventure"],
                                        "heat_level": "sweet_to_warm"
                                    },
                                    "new_adult": {
                                        "age_range": "18-25",
                                        "preferred_genres": ["contemporary", "paranormal"],
                                        "tone_preferences": ["emotional", "discovery"],
                                        "heat_level": "warm_to_steamy"
                                    },
                                    "adult": {
                                        "age_range": "25+",
                                        "preferred_genres": ["all"],
                                        "tone_preferences": ["varied"],
                                        "heat_level": "all_levels"
                                    }
                                },
                                "reading_preferences": {
                                    "pacing": {
                                        "fast": "action_oriented",
                                        "moderate": "balanced",
                                        "slow": "character_driven"
                                    },
                                    "conflict_style": {
                                        "external": "plot_driven",
                                        "internal": "character_driven",
                                        "mixed": "balanced"
                                    },
                                    "emotional_intensity": {
                                        "high": "dramatic",
                                        "moderate": "balanced",
                                        "low": "subtle"
                                    }
                                }
                            },
                            "market_segments": {
                                "traditional": {
                                    "preferred_formats": ["print", "ebook"],
                                    "publishing_route": "traditional",
                                    "marketing_channels": ["bookstores", "libraries"]
                                },
                                "digital_first": {
                                    "preferred_formats": ["ebook", "audio"],
                                    "publishing_route": "self_published",
                                    "marketing_channels": ["online_platforms", "social_media"]
                                },
                                "hybrid": {
                                    "preferred_formats": ["all"],
                                    "publishing_route": "hybrid",
                                    "marketing_channels": ["mixed"]
                                }
                            }
                        }
                    }
                    
                    style = component "Stylistic Elements" {
                        description "Narrative style and presentation"
                        implementation {
                            "pov": {
                                "styles": {
                                    "first_person": {
                                        "limitations": ["single_perspective"]
                                        "advantages": ["intimacy"]
                                    }
                                    "third_person_limited": {
                                        "limitations": ["single_perspective"]
                                        "advantages": ["flexibility"]
                                    }
                                }
                            }
                            "sensory": {
                                "primary_senses": {
                                    "sight": { "intensity": "high" }
                                    "touch": { "intensity": "high" }
                                    "smell": { "intensity": "medium" }
                                }
                            }
                        }
                    }
                    
                    heat = component "Heat Levels" {
                        description "Intimacy and emotional intensity levels"
                        implementation {
                            "levels": {
                                "sweet": {
                                    "max_intimacy": "kissing"
                                    "conflict_intensity": "low"
                                    "emotional_focus": "high"
                                }
                                "warm": {
                                    "max_intimacy": "fade_to_black"
                                    "conflict_intensity": "medium"
                                    "emotional_focus": "balanced"
                                }
                                "steamy": {
                                    "max_intimacy": "explicit"
                                    "conflict_intensity": "high"
                                    "emotional_focus": "balanced"
                                }
                                "erotic": {
                                    "max_intimacy": "explicit_plus"
                                    "conflict_intensity": "very_high"
                                    "emotional_focus": "physical"
                                }
                            }
                        }
                    }

                    // New component
                    atmosphere = component "Atmospheric Elements" {
                        description "Mood, tone, and emotional atmosphere"
                        implementation {
                            "elements": {
                                "mood": {
                                    "primary": "romantic|tense|mysterious|humorous"
                                    "secondary": "supporting_moods"
                                    "transitions": "gradual|sudden"
                                }
                                "tone": {
                                    "voice": "formal|casual|intimate"
                                    "perspective": "close|distant"
                                    "emotional_distance": "immersive|observational"
                                }
                                "sensory_richness": {
                                    "density": "sparse|moderate|rich"
                                    "focus": "visual|tactile|olfactory|auditory"
                                }
                            }
                        }
                    }
                }
            }

            // Theme and Symbolism Graph
            themeSymbolism {
                description "Thematic elements and symbolic patterns"
                components {
                    themes = component "Thematic Elements" {
                        description "Theme development and integration"
                        implementation {
                            "central_theme": {
                                "development_stages": [
                                    {
                                        "beat": "b01"
                                        "stage": "introduction"
                                        "intensity": "minor"
                                    }
                                ]
                            }
                            "subthemes": {
                                "max_count": 3
                                "development_stages": [
                                    {
                                        "beat": "b03"
                                        "stage": "introduction"
                                    }
                                ]
                            }
                        }
                    }
                    
                    symbols = component "Symbolic Elements" {
                        description "Recurring motifs and symbolic patterns"
                        implementation {
                            "types": {
                                "objects": {
                                    "frequency": "recurring"
                                    "meaning": "thematic"
                                }
                                "settings": {
                                    "frequency": "consistent"
                                    "meaning": "atmospheric"
                                }
                                "actions": {
                                    "frequency": "significant"
                                    "meaning": "character"
                                }
                            }
                        }
                    }
                    
                    subplots = component "Subplot Elements" {
                        description "Subplot integration and resolution"
                        implementation {
                            "mystery": {
                                "required_beats": [
                                    {
                                        "beat": "b02"
                                        "stage": "clue_introduction"
                                    }
                                ]
                            }
                            "character": {
                                "required_beats": [
                                    {
                                        "beat": "b03"
                                        "stage": "introduction"
                                    }
                                ]
                            }
                        }
                    }

                    // New component
                    resonance = component "Emotional Resonance" {
                        description "Emotional impact and reader connection"
                        implementation {
                            "elements": {
                                "emotional_hooks": {
                                    "type": "universal|personal|cultural"
                                    "intensity": "subtle|moderate|intense"
                                }
                                "reader_connection": {
                                    "identification": "character|situation|theme"
                                    "empathy_triggers": "shared_experience|universal_feeling"
                                }
                                "catharsis_points": {
                                    "timing": "midpoint|climax|resolution"
                                    "type": "emotional|thematic|character"
                                }
                            }
                        }
                    }
                }
            }
        }

        // Enhanced Relationships between concept graphs
        relationships {
            // Story Structure to Character Development
            storyStructure.beats -> characterDevelopment.arcs "drives"
            storyStructure.scenes -> characterDevelopment.voice "contains"
            storyStructure.chapters -> characterDevelopment.dynamics "organizes"
            storyStructure.pacing -> characterDevelopment.motivation "influences"
            
            // Character Development to Genre and Style
            characterDevelopment.voice -> genreStyle.genres "follows"
            characterDevelopment.dynamics -> genreStyle.heat "influences"
            characterDevelopment.arcs -> genreStyle.style "expresses"
            characterDevelopment.motivation -> genreStyle.atmosphere "shapes"
            
            // Genre and Style to Theme and Symbolism
            genreStyle.genres -> themeSymbolism.themes "constrains"
            genreStyle.style -> themeSymbolism.symbols "presents"
            genreStyle.heat -> themeSymbolism.subplots "affects"
            genreStyle.atmosphere -> themeSymbolism.resonance "creates"
            
            // Theme and Symbolism to Story Structure
            themeSymbolism.themes -> storyStructure.beats "guides"
            themeSymbolism.symbols -> storyStructure.scenes "enriches"
            themeSymbolism.subplots -> storyStructure.chapters "integrates"
            themeSymbolism.resonance -> storyStructure.pacing "informs"

            // Cross-Graph Relationships
            characterDevelopment.motivation -> storyStructure.pacing "drives"
            genreStyle.atmosphere -> characterDevelopment.dynamics "enhances"
            themeSymbolism.resonance -> characterDevelopment.arcs "deepens"
            storyStructure.pacing -> themeSymbolism.resonance "builds"
        }

        // External actors
        author = person "Author" {
            description "The creator of the romance novel"
        }
        
        reader = person "Reader" {
            description "The consumer of the romance novel"
        }

        author -> concepts "creates"
        concepts -> reader "delivers to"

        // Views
        views {
            // Concept Graph Views
            storyStructure {
                title "Story Structure Graph"
                description "Shows the core story structure elements"
                include storyStructure
                autoLayout
            }

            characterDevelopment {
                title "Character Development Graph"
                description "Shows character growth and relationships"
                include characterDevelopment
                autoLayout
            }

            genreStyle {
                title "Genre and Style Graph"
                description "Shows genre elements and stylistic choices"
                include genreStyle
                autoLayout
            }

            themeSymbolism {
                title "Theme and Symbolism Graph"
                description "Shows thematic elements and symbolic patterns"
                include themeSymbolism
                autoLayout
            }

            // Relationship Views
            relationships {
                title "Concept Graph Relationships"
                description "Shows how the concept graphs interact"
                include relationships
                autoLayout
            }

            // New Cross-Graph Views
            pacingMotivation {
                title "Pacing and Motivation"
                description "Shows how pacing and character motivation interact"
                include storyStructure.pacing
                include characterDevelopment.motivation
                include relationships
                autoLayout
            }

            atmosphereResonance {
                title "Atmosphere and Resonance"
                description "Shows how atmosphere creates emotional resonance"
                include genreStyle.atmosphere
                include themeSymbolism.resonance
                include relationships
                autoLayout
            }
        }

        // Validation Rules
        rules {
            // Story Structure Rules
            "Beats must follow a coherent structure"
            "Scenes must maintain proper pacing"
            "Chapters must have appropriate length"
            "Pacing must support emotional arcs"

            // Character Development Rules
            "Character arcs must show growth"
            "Character voices must be distinct"
            "Relationship dynamics must evolve"
            "Motivations must drive character actions"

            // Genre and Style Rules
            "Genre constraints must be followed"
            "Style must be consistent"
            "Heat levels must be appropriate"
            "Atmosphere must support genre expectations"

            // Theme and Symbolism Rules
            "Themes must be properly developed"
            "Symbols must be consistent"
            "Subplots must be integrated"
            "Emotional resonance must be maintained"

            // Cross-Graph Rules
            "Story structure must support character development"
            "Character development must fit genre constraints"
            "Genre elements must support themes"
            "Themes must guide story structure"
            "Pacing must enhance emotional resonance"
            "Atmosphere must support character dynamics"
            "Motivations must align with themes"
            "Resonance must build through pacing"
        }
    }
} 